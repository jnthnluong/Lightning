int startX = mouseX;
int startY = 0;

void setup()
{
  size(800, 800);
  background(129, 128, 112);
  fill(108,184,198);
  rect(0, 0, 800, 350);
  person();
  for (int x = 0; x < 900; x+=40){
    clouds(x,40);
  }
 

}
void draw()
{
  
  strokeWeight(10);
  int newX = startX + (int)(Math.random()*20);
  int newY = startY + (int)(Math.random()*75);
  if ((int)(Math.random()*2) >=1) {
    stroke(216, 209, 55);
    newX = startX + (int)(Math.random()*150);
    newY = startY + (int)(Math.random()*100);
    
  } else {
    stroke(206, 201, 96);
    newX = startX - (int)(Math.random()*150);
    newY = startY + (int)(Math.random()*100);
  }
  strokeWeight((int)(Math.random()*4)+10);

  line(startX, startY, newX, newY);
  
  if((startX > 200 && startX < 350) && ((startY < 400 && startY > 250) || (newX > 200 && newX < 360) && (newY < 400 && newY > 250))){

    fill(216,200,55);
    //rect(200,375,175,375);
    triangle(165,714,243+(int)(Math.random()*10),327+(int)(Math.random()*10),323,665);
    triangle(441,693,284+(int)(Math.random()*10),766+(int)(Math.random()*10),340,318);
    triangle(134,557,340,772,322,315);
    person();
  }
  
  startX = newX;
  startY = newY;
  
}


void mousePressed()
{

  startX = mouseX;
  startY = 0;
  stroke(0);
  strokeWeight(1);
  background(129, 128, 112);
  fill(108,184,198);
  rect(0, 0, 800, 350);
  fill(255,0,0);
 // rect(200,400,150,150);

  for (int x = 0; x < 800; x+=40){
    clouds(x,40+(int)(Math.random()*40)-20);
  }
  person();

  redraw();
}

void clouds(int x, int y){
  fill(255,255,255);
  ellipse(x,y,(int)(Math.random()*40+100),(int)(Math.random()*40)+100);
  
}

void person(){
  fill(255,255,255);
  stroke(0);
  strokeWeight(5);
  line(300,400,300,600);
  line(247,461,352,466);
  line(300,597,240,671);
  line(300,597,356,656);
  strokeWeight(1);
  //187, 287, >> 300 400
  ellipse(300,400,60,60);
}


