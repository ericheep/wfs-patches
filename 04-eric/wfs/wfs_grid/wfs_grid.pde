
// OSC Globals
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress address;

final int LISTENING_PORT = 5432;
final int SENDING_PORT = 9000;
final String HOME_IP = "127.0.0.1";
final String MY_IP = "192.168.1.2";
final String THEIR_IP = "192.168.1.3";
final String IP_ADDR = HOME_IP;

// OSC Packet Update Smoothing
int update_rate_hz = 1;
int update_rate_fm;
int counter = 0;
int packet_size = 20;

// Grid Stuff
Trace t = new Trace(1, 0.1, null);
Grid g = new Grid(10, 10, 5, 5, t);

// Particle System
Flock f = new Flock();
int n_birds = 500;
float separation = 20;
float cohesion = 25;
float alignment = 30;

void setup()
{
  size(768, 960);
  frameRate(30);

  // Grid
  g.init();
  
  // Particle System
  for (int i=0; i < n_birds; ++i)
  {
    f.add( new Bird(random(L_PAD, R_PAD), random(T_PAD, B_PAD)) );
  }

  // OSC setup
  oscP5 = new OscP5(this, LISTENING_PORT); // listen for messages on port 12k
  address = new NetAddress(IP_ADDR, SENDING_PORT); // ipaddr, port
  
  update_rate_fm = hz_to_fm(update_rate_hz);
  
  //==== Synth Param OSC Function Forwarding =====================================
  
  // Grid
  oscP5.plug(g, "set_rows", "/1/rows");
  oscP5.plug(g, "set_cols", "/1/cols");
  oscP5.plug(g, "set_gutx", "/1/gutx");
  oscP5.plug(g, "set_guty", "/1/guty");
  
  // Trace
  oscP5.plug(t, "set_length", "/1/length");
  oscP5.plug(t, "set_speed", "/1/speed");
  
  // OSC Packet Smoothing
  oscP5.plug(this, "set_update_rate", "/1/rate");
  oscP5.plug(this, "set_packet_size", "/1/size");
  
  // Flock
  // maybe it's better to have these functions as part of the Flock?
  oscP5.plug(this, "set_separation", "/1/sep");
  oscP5.plug(this, "set_cohesion", "/1/coh");
  oscP5.plug(this, "set_alignment", "/1/ali");
  //oscP5.plug(f, "set_n_vis", "/1/nvis");
}

void draw()
{
  background(BG);
  stroke(ORANGE);
  strokeWeight(4);
  rect(BORDER_X, BORDER_Y, BORDER_W, BORDER_H);

  f.run(separation, cohesion, alignment);
  
  OscBundle b = g.run(f);

  if (frameCount % update_rate_fm == 0) 
  {
    oscP5.send(b, address);
  }

}

int hz_to_fm(int hz)
{ 
  return floor(frameRate / hz); 
}

void set_update_rate(float f)
{
   update_rate_hz = constrain(floor(map(f, 0, 1, 1, 30)), 1, 30);
   
   update_rate_fm = hz_to_fm(update_rate_hz);
}

void set_packet_size(float f) { packet_size = floor(map(f, 0, 1, 1, 20)); }

void set_separation(float f) { separation = map(f, 0, 1, 0, 100); }
void set_cohesion(float f) { cohesion = map(f, 0, 1, 0, 100); }
void set_alignment(float f) { alignment = map(f, 0, 1, 0, 100); }
