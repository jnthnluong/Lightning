void setup()
{
  size(300,300);
}
void draw()
{

}
void mousePressed()
{

}
int startX = mouseX;
int startY = mouseY;

void setup()
{
  size(300,300);
  noLoop();
}
void draw()
{
 int newX = startX + (int)(Math.random()*20);
 int newY = startY + (int)(Math.random()*20);
 
 line(startX,startY,newX,newY);
 startX = newX;
 startY = newY;
}
void mousePressed()
{
  redraw();
}
