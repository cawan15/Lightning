int startX = 150;
int startY = 20;
int endX = 150;
int endY = 20;
int R = (int)(Math.random()*256);
int G = (int)(Math.random()*256);
int B = (int)(Math.random()*256);
void setup()
{
  size(300,300);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{
  int y = 20;
  while(y < 280)
  {
    stroke(0,0,0);
    line(150, y, 150, y);
    y = y + 10;
  }
  
  line(20,20,20,280);
  line(20,280,280,280);
  line(280,20,280,280);
  line(20,20,280,20);
  
  while(endY < 280)
  {
      endX = startX + (int)(Math.random()*19)-9;  
      endY = startY + (int)(Math.random()*9);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      if(endX < 150)
      {
        stroke(R,G,B);
      }
      if(endX > 150)
      {
        stroke(R + 50,G - 25,B - 50);
      }
    }
}
void mousePressed()
{
startX = 150;
startY = 20;
endX = 150;
endY = 20;
R = (int)(Math.random()*256);
G = (int)(Math.random()*256);
B = (int)(Math.random()*256);
}
