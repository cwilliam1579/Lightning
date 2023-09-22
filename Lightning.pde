int startX = (int)(Math.random()*200+50);
int startY = 75;
int endX = (int)(Math.random()*250+25);
int endY = 75;
int count = 0;

void setup()
{
  size(300, 300);
  strokeWeight(2);
  background(0, 0, 0);
}

void draw()
{
  fill(130, 130, 130);
  noStroke();
  ellipse(150, 0, 250, 150);
  ellipse(150, 40, 120, 120);
  ellipse(100, 25, 120, 120);
  ellipse(200, 25, 120, 120);

  stroke(#FFF01F);
  while (endY<300) {
    endY=startY+(int)(Math.random()*6);
    endX=startX+(int)(Math.random()*10)-5;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}


void mousePressed()
{
  startX = (int)(Math.random()*200+50);
  startY = 75;
  endX = (int)(Math.random()*250+25);
  endY = 75;
  count++;
  if (count >=10) {
    background(0, 0, 0);
    count=0;
  }
}
