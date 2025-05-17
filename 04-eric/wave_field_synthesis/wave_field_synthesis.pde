/*

- Size of the room mirrors window?
- Where and how are new boids created?
- if we're only ever using the max points, is there a reason to use the arraylist?
- should boids be controlling, sep, coh, & align individually?
- removing as many loops as possible seems good; early opto and maybe not necessary?
- make a data struct for the synth parameters I'll end up using for the performance

Format for OSC messages: /<src> <index> <xpos> <ypos>

index is an int
- possibly use index to control pitch?
xpos and ypos are floats 0-1 inclusive

 */

// Libraries
import oscP5.*;
import netP5.*;

// Globals
OscP5 oscP5;
NetAddress address;

Flock flock;
final int MAX_BOIDS = 400;

// Instrument Parameters
float separation = 25;
float cohesion = 50;
float alignment = 50;
float s_strength = 1.5;
float c_strength = 1;
float a_strength = 1;

void setup() {
  size(360, 360);
  
  oscP5 = new OscP5(this, 12000); // listen for messages on port 12k
  address = new NetAddress("127.0.0.1", 10000); // ipaddr, port
  
  flock = new Flock();
  for (int i = 0; i < MAX_BOIDS; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw()
{
  background(#282828);
  
  separation = mouseX;
  //c_strength = map(mouseY, 0, height, 0, 2);
  
  //// get current separation, cohesion, & alignment values, controller tbd
  //for(int i=0; i < flock.boids.size(); i++)
  //{
  //  Boid b = flock.boids.get(i);
  //  b.separation = separation;
  //  b.cohesion = cohesion;
  //  b.alignment = alignment;
  //}
  
  // build and send the osc message
  for(int i=0; i < flock.boids.size(); i++)
  {
    Boid b = flock.boids.get(i);
    
    OscMessage msg = new OscMessage("/src");
    msg.add(i); // index;
    msg.add(map(b.position.x, 0, width, 0, 1)); // xPos [0-1]
    msg.add(map(b.position.y, 0, height, 0, 1)); // yPos [0-1]
    oscP5.send(msg, address);
  }
  
  
  flock.run(separation, cohesion, alignment);
}

// Add a new boid into the System
void mousePressed() {
  //flock.addBoid(new Boid(mouseX,mouseY));
}
