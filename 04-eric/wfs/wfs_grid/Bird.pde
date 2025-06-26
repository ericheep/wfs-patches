
class Bird
{

  PVector pos;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed

  float separation = 25.0;
  float cohesion = 50.0;
  float alignment = 50.0;
  float s_strength = 1.5;
  float c_strength = 1;
  float a_strength = 1;
  
  boolean vis = true;


  Bird(float x, float y)
  {
    acceleration = new PVector(0, 0);

    // This is a new PVector method not yet implemented in JS
    // velocity = PVector.random2D();

    // Leaving the code temporarily this way so that this example runs in JS
    float angle = random(TWO_PI);
    velocity = new PVector(cos(angle), sin(angle));

    pos = new PVector(x, y);
    r = 3.0;
    maxspeed = random(2, 7);
    maxforce = 0.1;
  }

  void run(ArrayList<Bird> Birds, float s, float c, float a) {
    flock(Birds);
    update(s, c, a);
    borders();
    render();
  }

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acceleration.add(force);
  }

  // We accumulate a new acceleration each time based on three rules
  void flock(ArrayList<Bird> Birds) {
    PVector sep = separate(Birds);   // Separation
    PVector ali = align(Birds);      // Alignment
    PVector coh = cohesion(Birds);   // Cohesion
    // Arbitrarily weight these forces
    sep.mult(s_strength);
    ali.mult(a_strength);
    coh.mult(c_strength);
    // Add the force vectors to acceleration
    applyForce(sep);
    applyForce(ali);
    applyForce(coh);
  }

  // updates position, but also updates synth controls
  // might be better to create a synth param data struct, but for now, just pass this data in raw
  void update(float s, float c, float a) {

    // position update

    velocity.add(acceleration);
    velocity.limit(maxspeed);
    pos.add(velocity);
    // Reset accelertion to 0 each cycle
    acceleration.mult(0);

    // synth control update
    separation = s;
    cohesion = c;
    alignment = a;
  }

  // A method that calculates and applies a steering force towards a target
  // STEER = DESIRED MINUS VELOCITY
  PVector seek(PVector target) {
    PVector desired = PVector.sub(target, pos);  // A vector pointing from the position to the target
    // Scale to maximum speed
    desired.normalize();
    desired.mult(maxspeed);

    // Above two lines of code below could be condensed with new PVector setMag() method
    // Not using this method until Processing.js catches up
    // desired.setMag(maxspeed);

    // Steering = Desired minus Velocity
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    return steer;
  }

  void render() {
    // Draw a triangle rotated in the direction of velocity
    float theta = velocity.heading() + radians(90); // pi/2

    push();
    fill(vis ? PNT : DESEL);
    if (vis)
      stroke(FG, 127);
    else
      noStroke();
    strokeWeight(1);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    beginShape(TRIANGLES);
    vertex(0, -r*2);
    vertex(-r, r*2);
    vertex(r, r*2);
    endShape();
    popMatrix();
    pop();
  }

  // Wraparound
  void borders() {
    if (pos.x < L_PAD) pos.x = R_PAD - r*2;
    if (pos.x > R_PAD) pos.x = L_PAD + r*2;
    if (pos.y < T_PAD) pos.y = B_PAD - r*2;
    if (pos.y > B_PAD) pos.y = T_PAD + r*2;
  }

  // Separation
  // Method checks for nearby Birds and steers away
  PVector separate (ArrayList<Bird> Birds) {
    PVector steer = new PVector(0, 0, 0);
    int count = 0;
    // For every Bird in the system, check if it's too close
    for (Bird other : Birds) {
      float d = PVector.dist(pos, other.pos);
      // If the distance is greater than 0 and less than an arbitrary amount (0 when you are yourself)
      if ((d > 0) && (d < separation)) {
        // Calculate vector pointing away from neighbor
        PVector diff = PVector.sub(pos, other.pos);
        diff.normalize();
        diff.div(d);        // Weight by distance
        steer.add(diff);
        count++;            // Keep track of how many
      }
    }
    // Average -- divide by how many
    if (count > 0) {
      steer.div((float)count);
    }

    // As long as the vector is greater than 0
    if (steer.mag() > 0) {
      // First two lines of code below could be condensed with new PVector setMag() method
      // Not using this method until Processing.js catches up
      // steer.setMag(maxspeed);

      // Implement Reynolds: Steering = Desired - Velocity
      steer.normalize();
      steer.mult(maxspeed);
      steer.sub(velocity);
      steer.limit(maxforce);
    }
    return steer;
  }

  // Alignment
  // For every nearby Bird in the system, calculate the average velocity
  PVector align (ArrayList<Bird> Birds) {
    PVector sum = new PVector(0, 0);
    int count = 0;
    for (Bird other : Birds) {
      float d = PVector.dist(pos, other.pos);
      if ((d > 0) && (d < alignment)) {
        sum.add(other.velocity);
        count++;
      }
    }
    if (count > 0) {
      sum.div((float)count);
      // First two lines of code below could be condensed with new PVector setMag() method
      // Not using this method until Processing.js catches up
      // sum.setMag(maxspeed);

      // Implement Reynolds: Steering = Desired - Velocity
      sum.normalize();
      sum.mult(maxspeed);
      PVector steer = PVector.sub(sum, velocity);
      steer.limit(maxforce);
      return steer;
    } else {
      return new PVector(0, 0);
    }
  }

  // Cohesion
  // For the average position (i.e. center) of all nearby Birds, calculate steering vector towards that position
  PVector cohesion (ArrayList<Bird> Birds) {
    PVector sum = new PVector(0, 0);   // Start with empty vector to accumulate all positions
    int count = 0;
    for (Bird other : Birds) {
      float d = PVector.dist(pos, other.pos);
      if ((d > 0) && (d < cohesion)) {
        sum.add(other.pos); // Add position
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      return seek(sum);  // Steer towards the position
    } else {
      return new PVector(0, 0);
    }
  }
}
