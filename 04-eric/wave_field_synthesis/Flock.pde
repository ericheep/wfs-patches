// The Flock (a list of Boid objects)

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boidss

  Flock()
  {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run(float s, float c, float a) {
    for (Boid b : boids) {
      b.run(boids, s, c, a);  // Passing the entire list of boids to each boid individually
    }
  }

  

  void addBoid(Boid b) {
    boids.add(b); // .add is an arraylist function, not related to the boids
  }

}
