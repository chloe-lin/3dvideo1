float rotx, roty; 

void setup() {
  size(800, 800, P3D); 
  
}

void draw() { 
  background(255); 
  cube();
}

void cube() { 
  pushMatrix();
  translate(width/2, height/2, 0); //x, y, z
  
  rotateX(rotx); 
  rotateY(roty); 
  //rotateZ(); 
  
  fill(100); 
  stroke(0); 
  strokeWeight(3);
  box(200, 200, 200); //width, height, depth 
  popMatrix(); 
}

void mouseDragged() {  
  rotx = rotx + (pmouseY - mouseY)*0.01; 
  roty = roty + (pmouseX - mouseX)*-0.01; 
}
