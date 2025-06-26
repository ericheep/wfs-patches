
class Flock
{
  ArrayList<Bird> birds;
  int n_vis = 0;
  
  Flock()
  {
    birds = new ArrayList<Bird>();
  }
  
  void run(float s, float c, float a)
  {
    int idx = 0;
    for (Bird b : birds)
    {
      b.vis = idx < n_vis;
      b.run(birds, s, c, a);
      idx++;
    }
  }
  
  void set_n_vis(float f)
  {
    n_vis = floor(map(f, 0, 1, 0, birds.size()));
  }
  
  void add(Bird b)
  {
    birds.add(b);
    n_vis++;
  }
}
