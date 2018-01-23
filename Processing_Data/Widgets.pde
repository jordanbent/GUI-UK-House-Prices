class Widget
{
  int x, event;
  double y;
  String label; 
  color widgetColor, labelColor, widgetColorStroke, widgetColorStrokeB, widgetColorStrokeMap ;
  PFont widgetFont; 
  int widthW, widthArea;
  double heightW, heightArea;
  int maxlen;
  PImage backB;

  void setX(int tempx)
  {
    this.x = tempx;
  }

  void sety(double tempy)
  {
    this.y = tempy;
  }

  void setwidth(int tempw)
  {
    this.widthW = tempw;
  }

  void setheight(double temph)
  {
    this.heightW = temph;
  }

  // BARCHART CONSTRUCTOR
  Widget(int x, double y, int width, double height, int event)
  {
    this.x = x;
    this.y = y;
    this.widthW = width;
    this.heightW = height;
    this.event = event;
  }

  // Text widget constructor
  Widget(int x, double y, int width, double height, int event, String label)
  {
    this.x = x;
    this.y = y;
    this.widthW = width;
    this.heightW = height;
    this.label = label;
    this.event = event;
    widgetColorStrokeMap = color(0);
  }

  void drawTextWidget()
  {
    stroke(widgetColorStrokeMap);
    textAlign(LEFT);
    textFont(myFont);
    fill(255);
    rect(x, (int)y, widthW, (int)heightW, 7);
    fill(0);
    text(label, x+5, (int)y+20);
  }

  void drawTypeWidget()
  {
    fill(CHART);
    rect(x, (int)y, widthW, (int)heightW, 7);
    fill(255);
    textAlign(CENTER);
    textFont(smallFont);
    text(label, x+250, (int)y+55);
  }

  // BACK BUTTON CONSTRUCTOR
  Widget(int x, double y, int width, double height, PImage label, color widgetColor, int event)
  {
    this.x = x;
    this.y = y;
    this.widthW = width;
    this.heightW = height;
    this.backB = label;
    this.widgetColor = widgetColor;
    this.widgetColorStrokeB = widgetColor;
    this.event = event;
  }


  // FINAL SCREEN WIDGETS CONSTRUCTOR
  Widget(int in_x, int in_y, int in_width, int in_height, String in_label, color in_color, PFont in_font, int in_event, int in_max)
  {
    this.x=in_x;  
    this.y=in_y; 
    this.widthW = in_width; 
    this.heightW= in_height;
    this.label=in_label; 
    this.event=in_event; 
    this.widgetColor=in_color; 
    this.widgetColorStroke = widgetColor;
    this.widgetFont=in_font;
    this.labelColor=0; 
    this.maxlen=in_max;
  }
  float radii=7;

  void drawFinal()
  {
    if (label != null)
    {
      stroke(widgetColorStroke);
      fill(widgetColor);
      rect(x, (int) y, widthW, (int)heightW, radii);
      fill(labelColor);
      textAlign(CENTER, CENTER);
      text(label, x+(widthW/2), (int)y+((int)heightW/2));
    }
  }

  void drawBack()
  {
    fill(widgetColor);
    stroke(widgetColorStrokeB);
    rect(x, (int)y, widthW, (int)heightW);
    image(back, 15, 20);
  }

  void mouseMoved()
  {   
    if (getEvent(mouseX, mouseY) == EVENT_BACKB)
    {
      widgetColorStrokeB = 255;
    } else if (getEvent(mouseX, mouseY) != EVENT_BACKB)
    {
      widgetColorStrokeB = widgetColor;
    }
  }

  void drawPressed()
  {
    stroke(STROKE);
    fill(LIGHT_STROKE);
    rect(x-1, (int)y-1, widthW+1, (int)heightW+1, 7);
  }

  void drawMoved()
  {
    strokeWeight(1);
    stroke(255);
    line(x-1, (int)y-1, x+widthW+1, (int)y-1);
    line(x-1, (int)y-1, x-1, (int)y+(int)heightW+1);
    line(x+widthW+1, (int)y-1, x+widthW+1, (int)y+(int)heightW+1);
  }

  void drawMovedText(int mX, int mY, int widt, int heigh, String year)
  {
    fill(255);
    stroke(0);
    rect(mX+10, mY+25, widt, heigh);
    textFont(myFont);
    fill(0);
    text(year, mX+20, mY+42);
  }

  int getEvent(int mX, int mY)
  {
    if (mX>x && mX < x+widthW && mY >y && mY <y+heightW)
    {
      return event;
    }
    return EVENT_NULL;
  }
}