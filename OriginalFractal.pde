public void setup(){
  size(500,500);
  noFill();
}
public void draw(){
  background(255);
  myFractal(width/2,height/2,250);
  noLoop();
}
public void myFractal(float x, float y, int siz){
  frac(x,y,siz);
  if(siz > 10){
    myFractal(x,y,siz-30);
  }
}
public void frac(float x, float y, int siz){
  color c = color((int)(Math.random()*100),(int)(Math.random()*156)+100,(int)(Math.random()*200)+56);
  beginShape();
  vertex(x,y);
  stroke(c);
  bezierVertex(x-siz,siz/100,x+siz,siz/100,x,y);
  bezierVertex(0,y-siz,0,y+siz,x,y);
  bezierVertex(x-siz,height,x+siz,height,x,y);
  bezierVertex(width,y-siz,width,y+siz,x,y);
  endShape();
}

public void mousePressed(){
  loop();
  noFill();
  myFractal(width/2,height/2,250);
}

public void keyPressed(){
  fill((int)(Math.random()*100),(int)(Math.random()*156)+100,(int)(Math.random()*200)+56);
  loop();
}
