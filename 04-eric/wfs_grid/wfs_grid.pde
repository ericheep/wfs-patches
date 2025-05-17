/*

- using phase to read through the grid in different directions?
- multiple processing patches doing different things?

*/


// OSC Globals
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress address;

// Patch Parameters
float t = 0.0;
int n_cols = 5;
int n_rows = 5;
final int MAX_COLS = 10;
final int MAX_ROWS = 10;
int margin = 50;

void setup()
{
  size(360,360);
  
  oscP5 = new OscP5(this, 12000); // listen for messages on port 12k
  address = new NetAddress("127.0.0.1", 10000); // ipaddr, port
  frameRate(1);
}

void draw()
{
  background(#282828);
  fill(255);
  
  for(int x=0; x < n_cols; ++x)
  {
    for(int y=0; y < n_rows; ++y)
    {
      float xpos = map(x, 0, n_cols-1, margin, width-margin);
      float ypos = map(y, 0, n_rows-1, margin, height-margin);
      circle(xpos, ypos, 10);

      snd_osc_msg(y*n_cols+x, xpos, ypos);
    }
  }
}

void snd_osc_msg(int index, float x, float y)
{
    OscMessage msg = new OscMessage("/src");
    msg.add(index); // index;
    msg.add(map(x, 0, width, 0, 1));
    msg.add(map(y, 0, height, 0, 1));
    oscP5.send(msg, address);
}
