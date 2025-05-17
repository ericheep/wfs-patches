
// OSC Globals
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress address;

// Path Parameters
float t = 0.0;
float t2 = 0.0;
int n_pts = 30;
final int MAX_PTS = 100;

void setup()
{
  size(360,360);
  
  oscP5 = new OscP5(this, 12000); // listen for messages on port 12k
  address = new NetAddress("127.0.0.1", 10000); // ipaddr, port
  
}

void draw()
{
  background(#282828);
  fill(255);
  translate(width/2, height/2);
  
  float r = 150;
  
  //n_pts = (int)map(mouseX, 0, width, 1, MAX_PTS);
  //n_pts = floor(abs(sin(t2*TWO_PI))*10+1);
  for(int i=0; i < n_pts; ++i)
  {
    float phase = map(i, 0, n_pts, 0, TWO_PI);
    
    float x = r * cos((phase*TWO_PI)+t);
    float y = r * sin((phase*TWO_PI)+t);
    circle(x,y,10);
    snd_osc_msg(i, x, y);
  }
  t += 0.01;
  t2 += 0.001;
}

void snd_osc_msg(int index, float x, float y)
{
    OscMessage msg = new OscMessage("/src");
    msg.add(index); // index;
    msg.add(map(x, 0, width, 0, 1));
    msg.add(map(y, 0, height, 0, 1));
    oscP5.send(msg, address);
}
