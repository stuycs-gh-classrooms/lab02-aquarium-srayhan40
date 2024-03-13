class Animal {
  float x, y;
  Tank tank;
  Animal(float x, float y, Tank tank) {
    this.x = x;
    this.y = y;
    this.tank = tank;
  }
  
  void display() {
  }
  
  void move() {
  }
}

class Fish extends Animal {
  Fish(float x, float y, Tank tank) {
    super(x, y, tank);
  }
  
  void display() {
  }
  
  void move() {
  }
}

class Crab extends Animal {
  Crab(float x, float y, Tank tank) {
    super(x, y, tank);
  }
  
  void display() {
  }
  
  void move() {
  }
}

class Jellyfish extends Animal {
  Jellyfish(float x, float y, Tank tank) {
    super(x, y, tank);
  }
  
  void display() {
  }
  
  void move() {
  }
}

class Coral extends Animal {
  Coral(float x, float y, Tank tank) {
    super(x, y, tank);
  }
  
  void display() {
  }
}
