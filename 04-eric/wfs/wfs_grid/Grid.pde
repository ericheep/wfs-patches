
// Grid Parameters
final int MAX_COLS = 20;
final int MAX_ROWS = 20;

// Grid Appearance
final int SEL_STROKE_WEIGHT = constrain(int(5*0.25), 3, 5); // 5 is the gutter, leaving this oddity alone.
final int GRID_OPACITY = 140;

class Grid
{
  ArrayList<Cell> cells;
  Trace t;
  int n_rows;
  int n_cols;
  PVector gutter; //xy gutter
  PVector gutter_max;
  int n_cells;
  
  Grid(int rows, int cols, int gutx, int guty, Trace trace)
  {
    n_rows = constrain(rows, 1, MAX_ROWS);
    n_cols = constrain(cols, 1, MAX_COLS);
    n_cells = n_rows*n_cols;
    
    gutter_max = calc_gut_max();
    gutter = new PVector(
      constrain(gutx, 0, gutter_max.x),
      constrain(guty, 0, gutter_max.y)
    );

    cells = new ArrayList<Cell>();
    t = trace;
    t.g = this;
  }
  
  void init()
  { 
    gutter_max = calc_gut_max();
    if (gutter.x > gutter_max.x) gutter.x = gutter_max.x;
    if (gutter.y > gutter_max.y) gutter.y = gutter_max.y;
    
    cells.clear();
    for (int i=0; i < n_rows*n_cols; ++i)
    { 
      cells.add(new Cell(i, this));
    }
  }

  PVector calc_gut_max()
  {
    float max_gx = (-MIN_CELL_SIZE * n_cols + FLOCK_W) / n_cols;
    float max_gy = (-MIN_CELL_SIZE * n_rows + FLOCK_H) / n_rows;
    return new PVector(max_gx, max_gy);
  }
 
  void set_cols(float cols)
  {
    n_cols = floor(map(cols, 0, 1, 1, MAX_COLS));
    n_cells = n_rows*n_cols;
    init();
  }

  void set_rows(float rows)
  {
    n_rows = floor(map(rows, 0, 1, 1, MAX_ROWS));
    n_cells = n_rows*n_cols;
    init();
  }
  
  void set_rowcol(int rows, int cols)
  {
    n_rows = constrain(rows, 1, MAX_ROWS);
    n_cols = constrain(cols, 1, MAX_COLS);
    n_cells = n_rows*n_cols;
    init();
  }
  
  void set_gutx(float gutt)
  {
    gutter.x = floor(map(gutt, 0, 1, 1, gutter_max.x));
    init();
  }
  
  void set_guty(float gutt)
  {
    gutter.y = floor(map(gutt, 0, 1, 1, gutter_max.y));
    init();
  }
  
  OscBundle run(Flock f)
  {
    OscBundle bundle = new OscBundle();
    
    for(int i=0; i < cells.size(); ++i)
    {
      Cell c = cells.get(i);
      t.contains(c);
      if (c.selected)
      {
        int count = 0;
        for(Bird b : f.birds)
        {
            if (c.contains(b.pos) && b.vis && bundle.size() < packet_size)
            {
              OscMessage msg = new OscMessage("/src");
              msg.add(count++);
              msg.add(f.birds.indexOf(b));
              msg.add(map(b.pos.x, L_PAD, R_PAD, 0, 1));
              msg.add(map(b.pos.y, T_PAD, B_PAD, 0, 1));    
              bundle.add(msg);
            }
        }
      }
      c.render();
    }
    t.update();
    
    return bundle;
  }
 
}

final int MIN_CELL_SIZE = 6; // 2x the bird radius of 3

class Cell
{
  PVector size;
  PVector pos; // top left corner of the cell
  int index;
  color border = FG;
  color selection = SEL;
  boolean selected = false;
  Grid g;
  
  Cell(int idx, Grid grid)
  {
    index = idx;
    g = grid;
    PVector i = to2D(idx, g);
    size = calc_size();
    pos = calc_pos((int)i.y, (int)i.x);
  }
  
  PVector calc_pos(int r, int c)
  {
    return new PVector(
      size.x*c + L_PAD + (0.5*g.gutter.x) + (c*g.gutter.x),
      size.y*r + T_PAD + (0.5*g.gutter.y) + (r*g.gutter.y)
    );
  }
  
  PVector calc_size()
  {
    float w = (FLOCK_W - (g.n_cols*g.gutter.x)) / g.n_cols;
    if (w < MIN_CELL_SIZE) w = MIN_CELL_SIZE;
    float h = (FLOCK_H - (g.n_rows*g.gutter.y)) / g.n_rows;
    if (h < MIN_CELL_SIZE) h = MIN_CELL_SIZE;
    return new PVector(w, h);
  }
  
  boolean contains(PVector v)
  {
    return (
      (pos.x <= v.x && v.x <= pos.x+size.x) &&
      (pos.y <= v.y && v.y <= pos.y+size.y)
    );
  }
  
  void render()
  {
    noFill();
    stroke(selected ? selection : border, GRID_OPACITY);
    strokeWeight(selected ? SEL_STROKE_WEIGHT : 1);
    rect(pos.x, pos.y, size.x, size.y);
  }
}

class Trace
{
  float phase = 0;
  int len = 1; // num cells in the selection range. [1, grid_size]
  ArrayList<Integer> range; // typing integer all the way out for this is dumb.
  float speed = 0.1;
  Grid g;
  
  Trace(int l, float s, Grid grid)
  {
    g = grid;
    len = constrain(l, 1, 20);
    speed = constrain(s, 0, 20);
    range = new ArrayList<Integer>();
  }
  
  void update()
  {
    phase += speed;
    phase %= g.n_cells;    
  }
  
  void set_speed(float s)
  {
    speed = map(s*s*s, 0, 1, 0, 20);
  }
  
  void set_length(float l)
  {
    len = floor(map(l, 0, 1, 0, g.n_cells));
  }
  
  // we could return an arraylist, but we own it, and I don't see a structural reason to change it.
  void fill_range()
  {
    if(len > g.n_cells) len = g.n_cells; // not sure if it matters, but what the heck.
    
    for(int i=0, b=floor(phase); i < len; i++)
    {
      range.add(b++);
      b %= g.n_cells;
    }
  }
  
  void contains(Cell c)
  {
    fill_range();
    c.selected = range.contains(c.index);
    range.clear();
  }
}

// Not sure where to put these grid 2d to 1d index utils
int to1D(int r, int c, int n_rows)
{
  return r*n_rows+c;
}

// col, row return
PVector to2D(int index, Grid g)
{
  return new PVector(
    index % g.n_cols,
    index / g.n_cols
  );
}
