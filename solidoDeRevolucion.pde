ArrayList<Point> points;
PShape solid;

boolean bool = true;

float sigma = PI/8;
int z;
int zoom = 0;
PShape var, gr;

import gifAnimation.*;

GifMaker gifExport;

void setup() {
  size(1080, 640, P3D);
  points = new ArrayList<Point>();
  gifExport = new GifMaker(this, "sdr.gif");
  gifExport.setRepeat(0);  
}

void draw() {
  if (bool) {
    background(0);
    textSize(32);
    fill(255);
    text("Haz click a la derecha de la linea", 5, 40);
    text("central para generar las lineas del", 5, 80);
    text("dibujo del solido de revolucion", 5, 120);
    text("\"Enter\" para crear el solido 3D", 5, 200);
    text("\"Retroceso\" para volver a empezar", 5, 240);
    text("Historial de puntos actual:",5,280);
    text(hist(), 5, 320);
    
    fill(0, 255);
    beginShape();
    for (int i = 0; i < points.size(); i++) {
      vertex(points.get(i).getX(), points.get(i).getY());
      if (i == 0) {
        vertex(points.get(i).getX(), points.get(i).getY());
      }
    }
    endShape();
    displayMiddleLine();
  } else {
    background(0);
    textSize(16);
    fill(255);
    text("\"Retroceso\" para volver a empezar", width-205, height-10);
    text("Zoom In:   +", width-130, 20);
    text("Zoom Out:  -",width-130, 50);
    displayRevolution();
  }
 gifExport.setDelay(1);
 gifExport.addFrame();
}

void displayMiddleLine() {
  stroke(255);
  line(width/2, 0, width/2, height);
}

String hist(){
  String str = "";
  for (int i = 0; i < points.size(); i++) {
    str+= "[" + points.get(i).getX()+ "," + points.get(i).getY() + "]";
    if( i < points.size()-1){
      str+= ",";
    }
    if((i+1) % 3 == 0){
      str+="\n";
    }
  }
  return str;
}

void displayRevolution() {
  var = createShape();
  var.beginShape(TRIANGLE_STRIP);
  var.stroke(255, 0, 0, 255);
  var.strokeWeight(3);
  var.fill(255, 255, 255, 255);
  for (int i = 0; i < points.size()-1; i++) {
    for (int iter = 0; iter <= (360/degrees(sigma)); iter++) {
      var.vertex((width/2)+(int)((float)(points.get(i).getX()-(width/2)) * cos((float)sigma*iter)), points.get(i).getY(),(width/2)+(int)((float)(points.get(i).getX()-(width/2)) * sin((float)sigma*iter)));
      var.vertex((width/2)+(int)((float)(points.get(i+1).getX()-(width/2)) * cos((float)sigma*(iter))), points.get(i+1).getY(),(width/2)+(int)((float)(points.get(i+1).getX()-(width/2)) * sin((float)sigma*(iter))));
    }
  }
  var.endShape();
  translate(-width/2, -height/2,0);
  translate(mouseX, mouseY,-1000 + zoom);
  shape(var);
}

void mouseClicked() {
  if (mouseX >= width/2 && bool) {
    Point l = new Point(mouseX, mouseY);
    points.add(l);
    for (int i = 0; i < points.size(); i++) {
      System.out.println("X: " +points.get(i).getX()+ " | Y:" + points.get(i).getY());
    }
  }
}

void keyPressed() {
  if (keyCode == ENTER && bool) {
    bool = false;
  }

  if (keyCode == BACKSPACE) {
    points = new ArrayList<Point>();
    bool = true;
  }
  if (key == '+'){
    zoom += 100;
  }
  if (key == '-'){
    zoom -= 100;
  }
  if (keyCode == UP)  gifExport.finish();  
}

class Point {
  int x, y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }

  int getX() {
    return x;
  }

  int getY() {
    return y;
  }
}
