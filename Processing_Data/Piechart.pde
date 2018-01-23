class Piechart
{
  float detached, semiDetached, terrace, flats, other;
  int x, y, radius;
  
  Piechart(ArrayList data, int x, int y, int radius)
  {
    detached = getRadians(data,"D");
    semiDetached = getRadians(data,"S");
    terrace = getRadians(data,"T");
    flats = getRadians(data,"F");
    other = getRadians(data,"O");
    
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  void setPercentage(float number)
  {
    this.percentage = number;
  }
  float getRadians(ArrayList data, String type)
  {
    String currentType;
    int count = 0;
    for(int index = 0; index < data.size(); index++)
    {
      currentType = ((House)(data.get(index))).type;
      if(currentType.equals(type))
      {
        count++;
      }
    }
    float size = data.size();
    percentage = count/size;
    setPercentage(percentage);
    float degrees = percentage * 360;
    float dix180 = degrees/180;
    float radians = dix180*PI;
    return radians;
  }
  float percentage;
    int deta = #E5E5FF;
    int semi = #FFE7BA;
    int terr = #927183;
    int fla = #ECC3BF;
    int oth = #EEE5DE;
    
  void drawPiechart()
  {
    
    stroke(STROKE-40);
    // Detached
    fill(deta);
    arc(x,y,radius,radius,0,detached,PIE);
    // Semi-Detached
    fill(semi);
    arc(x,y,radius,radius,detached,semiDetached+detached,PIE);
    // Terraced
    fill(terr);
    arc(x,y,radius,radius,semiDetached+detached,terrace+semiDetached+detached,PIE);
    // Flats
    fill(fla);
    arc(x,y,radius,radius,terrace+semiDetached+detached,flats+terrace+semiDetached+detached,PIE);
    // Other
    fill(oth);
    arc(x,y,radius,radius,flats+terrace+semiDetached+detached,other+flats+terrace+semiDetached+detached,PIE);
    
  }
  
  void drawKey()
   {
     int y = 250;
     int yadd = 20;
     textAlign(LEFT);
     int xIn = 150;
     noStroke();
     fill(deta);
     textFont(smallFont);
       rect(100,SCREENY-y,20,20);
       fill(0);
       text("- Detached",xIn,SCREENY-y+yadd);
     fill(semi);
       rect(100,SCREENY-(y-=40),20,20);
       fill(0);
       text("- Semi-Detached",xIn,SCREENY-(y)+yadd);
     fill(terr);
       rect(100,SCREENY-(y-=40),20,20);
       fill(0);
       text("- Terrace",xIn,SCREENY-y+yadd);
     fill(fla);
       rect(100,SCREENY-(y-=40),20,20);
       fill(0);
       text("- Flats",xIn,SCREENY-y+yadd);
     fill(oth);
       rect(100,SCREENY-(y-=40),20,20);
       fill(0);
       text("- Other",xIn,SCREENY-y+yadd);
   }
  
}