Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.spawnCoral();
}

void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY, 0);
}

void keyPressed() {
  float mouseXFloat = mouseX;
  float mouseYFloat = mouseY;
  switch(keyCode) {
    case 49:
      t.addAnimal(mouseXFloat, mouseYFloat, 1);
      break;
    case 50:
      t.addAnimal(mouseXFloat, mouseYFloat, 2);
      break;
    case 51:
      t.addAnimal(mouseXFloat, mouseYFloat, 3);
      break;
    case 52:
      t.addAnimal(mouseXFloat, mouseYFloat, 4);
      break;
    default:
      break;
  }
}
