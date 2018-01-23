class Barchart
{
  int xMargin = 100;
  int yAxisPointA = 120;
  int yAxisPointB = 1000;
  int xAxisPointB = 1200;

  final double PRICE_MAX = 6;//(*100,000)

  ArrayList measurements;
  double barHeight;  
  int barWidth;  
  int tempx;

  ArrayList averages;  
  ArrayList widgets;

  int ytemp = yAxisPointB;
  int heighttemp;

  Barchart(ArrayList averages)
  {
    this.averages = averages;

    measurements = new ArrayList();
    widgets = new ArrayList();
  }


  void draw()
  {

    //--------------------------------------------  X AND Y AXIS  ------------------------------------------------\\
    stroke(STROKE);
    strokeWeight(2);

    line(xMargin, yAxisPointA, xMargin, yAxisPointB);         // Y AXIS
    line(xMargin, yAxisPointB, xAxisPointB, yAxisPointB);     // X AXIS

    //--------------   DRAWING PRICES ON Y AXIS  -------------\\
    int y = yAxisPointB;  

    for (int index = 1; index <= PRICE_MAX; index++) // STARTING AT 100,000
    {
      double spaceing = (yAxisPointB - yAxisPointA) / PRICE_MAX;   // AMOUNT OF SPACE BETWEEN EACH PRICE MARKER
      y -= spaceing;

      line(xMargin-10, y, xMargin, y);            // DRAWING DASHES

      textFont(myFont);
      fill(CHART);
      if (index >= 10)       // IF 1 MIL OR OVER
      {
        int temp = index % 10;
        int start = index /10;
        text("£"+start+","+temp+"00,000", 10, y+5);
      } else
        text("£"+index+"00,000", 15, y+5);
    }

    //--------------   DRAWING YEARS ON X AXIS  -------------\\

    int spaceing = (xAxisPointB - xMargin) / (MAX_YEAR-2);
    int x = xMargin+spaceing;
    String year;

    for (int index = 0; index < averages.size(); index++)    // AVERAGES.SIZE IS EQUAL TO NUMBER OF YEARS
    {
      line(x, yAxisPointB, x, yAxisPointB+10);    // DRAWING DASH

      if (index >= 10)
      {
        // DRAWING YEAR
        tempx = x - spaceing;
        year = "20"+index;
        text(year, tempx+5, yAxisPointB+40);

        // GETTING PARAMETERS FOR BARCHARTS
        barHeight = ((int)averages.get(index) / (PRICE_MAX*100000)) * (yAxisPointB-yAxisPointA);
        barWidth = spaceing;
      } else
      {
        // DRAWING YEAR
        tempx = x - spaceing;
        year = "200"+index;
        text(year, tempx+5, yAxisPointB+40);

        // GETTING PARAMETERS FOR BARCHARTS
        double numpixels = ((int)averages.get(index) / (PRICE_MAX*100000)) * (yAxisPointB-yAxisPointA);
        barHeight = numpixels;
        barWidth = spaceing;
      }

      measurements.add(barHeight);
      measurements.add(barWidth);
      measurements.add(tempx);
      x += spaceing;
    }

    //--------------   DRAWING BARCHARTS  -------------\\


    for (int index = 0; index < measurements.size(); index+=3)
    {
      stroke(STROKE);
      if (heighttemp < (double)measurements.get(index))
      {
        rect((int)measurements.get(index+2), ytemp, (int)measurements.get(index+1), heighttemp, 7);
        // rect(tempx, ytemp, barWidth, heightTemp, curve)
      } else
      {
        int ytemp2 = (int)(yAxisPointB - (double)measurements.get(index));
        rect((int)measurements.get(index+2), ytemp2, (int)measurements.get(index+1), (int)( (double)measurements.get(index)), 7);
        // rect(tempx, topOfBarChart-barHeight, barWidth, barHeight, curve);
      }
    }
    ytemp-=30;
    heighttemp+=30;
  }
}