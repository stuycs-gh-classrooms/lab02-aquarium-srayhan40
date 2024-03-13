class Tank {
  int x, y, w, h, floorH;
  ArrayList<Animal> animals;
  Tank(int x, int y, int w, int h, int floorH) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h - floorH;
    this.floorH = floorH;
    animals = new ArrayList<Animal>();
  }

  void display() {
    fill(0, 255, 255);
    rect(x, y, w, h);
    fill(unhex("C2"), unhex("B2"), unhex("7F"));
    rect(x, y + h, w, floorH);
    for (Animal animal : animals) {
      animal.display();
    }
  }

  void moveAnimals() {
    for (Animal animal : animals) {
      animal.move();
    }
  }

  void addAnimal(float x, float y, int animalType) {
    switch(animalType) {
        case 1:
            animals.add(new Fish(x, y, this));
            break;
        case 2:
            animals.add(new Crab(x, y, this));
            break;
        case 3:
            animals.add(new Jellyfish(x, y, this));
            break;
        case 4:
            animals.add(new Coral(x, y, this));
            break;
        default:
            break;
    }
}

  void spawnCoral() {
    for (int i = 0; i < 4; i++) {
      float coralX = random(this.x, this.x + this.w);
      float coralY = random(this.y + this.h, this.y + this.h + this.floorH);
      animals.add(new Coral(coralX, coralY, this));
    }
  }
}
