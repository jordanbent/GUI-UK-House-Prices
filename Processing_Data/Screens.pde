class Screen
{
  ArrayList  screenWidgets;  
  ArrayList Widgets;  
  Widget tempW;
  PImage logo, englandP, walesP;  
  String title;



  //-------------------------------------      BARCHART SCREEN      -----------------------------------------------------------

  Barchart barchart;
  int top;      
  int margin;   
  int widthOfXAxis;

  // Barchart Screen Home page
  Screen (ArrayList averages, PImage logo)
  {  
    screenWidgets=new  ArrayList(); 
    this.logo = logo;

    barchart = new Barchart(averages);
    Widgets = new ArrayList();
  }

  void draw()
  {
    background(BACKGROUND);
    noStroke();
    // DRAWING TOP BAR
    fill(BACKGROUND_DARKER);
    rect(0, 0, SCREENX, BACK_BUTTON);

    // DRAWING EITHER LOGO IF HOME SCREEN OR TITLE IF OTHER SCREEN
    if (logo != null)
    {
      image(trinitylogo, 650, 0);
      fill(CHART);
      textAlign(CENTER);
      textFont(myFont);
      text("CS1013 Programming"+"\n"+"Project Group 31", 800, 38);
      textAlign(RIGHT);
      textFont(smallFont);
      text("AVERAGE HOUSE PRICE IN THE UK PER YEAR", 1400, 150);
      textFont(myFont2);
      fill(STROKE);
      text("Click a year to further explore the house registry data", 1400, 180);
    } else if ( title != null)
    {
      fill(CHART);
      textAlign(CENTER);
      textFont(titleFont);
      text(title, 460, 50);
    }

    // DRAWING BARCHART
    textAlign(LEFT);
    barchart.draw();

    top = barchart.yAxisPointB+60;
    margin = barchart.xMargin;
    widthOfXAxis = barchart.xAxisPointB;

    int y = 0;
    int event = 0;
    for (int index = 0; index < barchart.measurements.size(); index+=3)
    { 
      switch(y)
      {
      case EVENT_2000:
        event = 0;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2001:
        event = 1;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2002:
        event = 2;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2003:
        event = 3;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2004:
        event = 4;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2005:
        event = 5;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2006:
        event = 6;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2007:
        event = 7;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2008:
        event = 8;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2009:
        event = 9;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2010:
        event = 10;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2011:
        event = 11;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2012:
        event = 12;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2013:
        event = 13;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2014:
        event = 14;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2015:
        event = EVENT_2015;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      case EVENT_2016:
        event = EVENT_2016;
        tempW = new Widget((int)barchart.measurements.get(index+2), 
          (double)barchart.yAxisPointB-(double)barchart.measurements.get(index), 
          (int)barchart.measurements.get(index+1), (double)barchart.measurements.get(index), event);
        Widgets.add(tempW);
        break;
      }
      y++;
    }
  }



  //---------------------------------------------------------------    AREA SCREEN    ------------------------------------------------------------------

  PImage walesMap; 
  PImage englandMap;
  Widget englandWidget, walesWidget;
  Widget isleOfWhite;

  Screen(PImage image1, PImage image2, PImage image3, PImage image4)
  {
    this.englandP = image1;
    englandWidget = new Widget(SCREENX/7, SCREENY/4, englandP.width, englandP.height, EVENT_ENGLAND);
    this.walesP = image2;
    walesWidget = new Widget((SCREENX*3)/5, SCREENY/4, walesP.width, walesP.height, EVENT_WALES);
    this.englandMap = image3;
    this.walesMap = image4;
  }


  void drawEngland()
  {
    int margin = 150;
    englandPicked = true;
    walesPicked = false;
    rect((margin)-80, (SCREENY/4)-50, (englandMap.width)+20, (englandMap.height)+20, 7);
    image(englandMap, (margin-60), (SCREENY/4)-40);
    englandWidget.setwidth(englandMap.width+45);
    englandWidget.setX(margin-80);
    englandWidget.setheight(englandMap.height+60);
  }

  ArrayList widgetsEngland = new ArrayList();
  boolean zoomOne = false;
  Widget cornwall, devon, somerset, dorset, wiltshire, isleOfWight, bristol, gloucestershire, oxfordshire, berkshire, hampshire, westSussex, eastSussex, kent, surrey, greaterLondon, herefordshire, westMidlands, shropshire, northamptonshire, worcestershire, 
    warwickshire, cheshire, merseyside, greaterManchester, westYorkshire, eastRidingOfYork, southYorkshire, durham, tyneAndWear, northumberland, cumbria, lancashire, northYorkshire, lincolnshire, norfolk, suffolk, essex, hertfordshire, bedfordshire, 
    buckinghamshire, leicestershire, nottinghamshire, derbyshire, cambridgeshire, staffordshire, rutland;
  void englandWidgets()
  {
    textFont(myFont);
    int widthW = 45;
    int heightW = 25;
    cornwall = new Widget(155, 1050, widthW, heightW, EVENT_CORNWALL, "CRN");
    widgetsEngland.add(cornwall);
    devon = new Widget(200, 950, 60, heightW, EVENT_DEVON, "DVN");
    widgetsEngland.add(devon);
    somerset = new Widget(310, 900, widthW, heightW, EVENT_SOMERSET, "SMR");
    widgetsEngland.add(somerset);
    dorset = new Widget(325, 950, widthW, heightW, EVENT_DORSET, "DOR");
    widgetsEngland.add(dorset);
    wiltshire = new Widget(400, 890, widthW, heightW, EVENT_WILTSHIRE, "WLT");
    widgetsEngland.add(wiltshire);
    isleOfWight = new Widget(450, 975, widthW, heightW, EVENT_ISLE_OF_WIGHT, "IoW");
    widgetsEngland.add(isleOfWight);
    bristol = new Widget(330, 860, widthW, heightW, EVENT_BRISTOL, "BRI");
    widgetsEngland.add(bristol);
    gloucestershire = new Widget(325, 800, widthW, heightW, EVENT_GLOUCESTERSHIRE, "LON");
    widgetsEngland.add(gloucestershire);
    oxfordshire = new Widget(440, 830, widthW, heightW, EVENT_OXFORDSHIRE, "OXF");
    widgetsEngland.add(oxfordshire);
    berkshire = new Widget(445, 860, widthW, heightW, EVENT_BERKSHIRE, "BRK");
    widgetsEngland.add(berkshire);
    hampshire = new Widget(420, 925, widthW, heightW, EVENT_HAMPSHIRE, "HMP");
    widgetsEngland.add(hampshire);
    westSussex = new Widget(500, 910, widthW, heightW, EVENT_WEST_SUSSEX, "WSX");
    widgetsEngland.add(westSussex);
    eastSussex = new Widget(605, 920, widthW, heightW, EVENT_EAST_SUSSEX, "ESX");
    widgetsEngland.add(eastSussex);
    kent = new Widget(650, 880, widthW, heightW, EVENT_KENT, "KENT");
    widgetsEngland.add(kent);
    surrey = new Widget(525, 880, widthW, heightW, EVENT_SURREY, "SRY");
    widgetsEngland.add(surrey);
    greaterLondon = new Widget(550, 850, widthW, heightW, EVENT_GREATER_LONDON, "GL");
    widgetsEngland.add(greaterLondon);
    herefordshire = new Widget(300, 770, widthW, heightW, EVENT_HEREFORDSHIRE, "HRE");
    widgetsEngland.add(herefordshire);
    westMidlands = new Widget(405, 695, widthW, heightW, EVENT_WEST_MIDLANDS, "WMD");
    widgetsEngland.add(westMidlands);
    shropshire = new Widget(295, 680, widthW, heightW, EVENT_SHROPSHIRE, "SHR");
    widgetsEngland.add(shropshire);
    northamptonshire = new Widget(460, 710, widthW, heightW, EVENT_NORTHAMPTONSHIRE, "NRT");
    widgetsEngland.add(northamptonshire);
    worcestershire = new Widget(360, 735, widthW, heightW, EVENT_WORCESTERSHIRE, "WOR");
    widgetsEngland.add(worcestershire);
    warwickshire = new Widget(430, 760, widthW, heightW, EVENT_WARWICKSHIRE, "WAR");
    widgetsEngland.add(warwickshire);
    cheshire = new Widget(320, 610, widthW, heightW, EVENT_CHESHIRE, "CHE");
    widgetsEngland.add(cheshire);
    merseyside = new Widget(290, 585, widthW, heightW, EVENT_MERSEYSIDE, "MRY");
    widgetsEngland.add(merseyside);
    greaterManchester = new Widget(335, 558, widthW, heightW, EVENT_GREATER_MANCHESTER, "MAN");
    widgetsEngland.add(greaterManchester);
    westYorkshire = new Widget(400, 530, widthW, heightW, EVENT_WEST_YORKSHIRE, "WYR");
    widgetsEngland.add(westYorkshire);
    eastRidingOfYork = new Widget(550, 510, widthW, heightW, EVENT_EAST_RIDING_OF_YORK, "ERY");
    widgetsEngland.add(eastRidingOfYork);
    southYorkshire = new Widget(450, 580, widthW, heightW, EVENT_SOUTH_YORKSHIRE, "SYR");
    widgetsEngland.add(southYorkshire);
    durham = new Widget(430, 400, widthW, heightW, EVENT_DURHAM, "DUR");
    widgetsEngland.add(durham);
    tyneAndWear = new Widget(440, 360, widthW, heightW, EVENT_TYNE_AND_WEAR, "TAW");
    widgetsEngland.add(tyneAndWear);
    northumberland = new Widget(410, 310, widthW, heightW, EVENT_NORTHUMBERLAND, "NUM");
    widgetsEngland.add(northumberland);
    cumbria = new Widget(320, 415, widthW, heightW, EVENT_CUMBRIA, "CMB");
    widgetsEngland.add(cumbria);
    lancashire = new Widget(325, 500, widthW, heightW, EVENT_LANCASHIRE, "LAN");
    widgetsEngland.add(lancashire);
    northYorkshire = new Widget(470, 445, widthW, heightW, EVENT_NORTH_YORKSHIRE, "NYR");
    widgetsEngland.add(northYorkshire);
    lincolnshire = new Widget(580, 595, widthW, heightW, EVENT_LINCOLNSHIRE, "LIN");
    widgetsEngland.add(lincolnshire);
    norfolk = new Widget(655, 680, widthW, heightW, EVENT_NORFOLK, "NOR");
    widgetsEngland.add(norfolk);
    suffolk = new Widget(675, 760, widthW, heightW, EVENT_SUFFOLK, "SUF");
    widgetsEngland.add(suffolk);
    essex = new Widget(640, 795, widthW, heightW, EVENT_ESSEX, "ESX");
    widgetsEngland.add(essex);
    hertfordshire = new Widget(538, 822, widthW, heightW, EVENT_HERTFORDSHIRE, "HRT");
    widgetsEngland.add(hertfordshire);
    bedfordshire = new Widget(540, 765, widthW, heightW, EVENT_BEDFORDSHIRE, "BED");
    widgetsEngland.add(bedfordshire);
    buckinghamshire = new Widget(495, 795, widthW, heightW, EVENT_BUCKINGHAMSHIRE, "BCK");
    widgetsEngland.add(buckinghamshire);
    leicestershire = new Widget(455, 680, widthW, heightW, EVENT_LEICESTERSHIRE, "LSR");
    widgetsEngland.add(leicestershire);
    nottinghamshire = new Widget(470, 635, widthW, heightW, EVENT_NOTTINGHAMSHIRE, "NOT");
    widgetsEngland.add(nottinghamshire);
    derbyshire = new Widget(435, 608, widthW, heightW, EVENT_DERBYSHIRE, "DRB");
    widgetsEngland.add(derbyshire);
    cambridgeshire = new Widget(565, 735, widthW, heightW, EVENT_CAMBRIDGESHIRE, "CAM");
    widgetsEngland.add(cambridgeshire);
    staffordshire = new Widget(370, 638, widthW, heightW, EVENT_STAFFORDSHIRE, "STF");
    widgetsEngland.add(staffordshire);
    rutland = new Widget(560, 670, widthW, heightW, EVENT_RUTLAND, "RTL");
    widgetsEngland.add(rutland);
  }


  void drawWales()
  {
    int margin = 150;
    walesPicked = true;
    englandPicked = false;
    rect(((SCREENX-margin+80)-walesMap.width), (SCREENY/4)-50, (walesMap.width)+20, (walesMap.height), 7);
    image(walesMap, (SCREENX-margin+100)-walesMap.width, SCREENY/4-50);
    walesWidget.setwidth(walesMap.width+60);
    walesWidget.setheight(walesMap.height+60);
  }

  ArrayList widgetsWales = new ArrayList();
  boolean zoom = false;
  Widget conwy, isleOfAnglesey, denbigshire, flintshire, wrexham, ceredigion, gwynedd, powys, bridgend, carmarthenshire, neathPortTalbot, pembrokeshire, swansea, monmouthshire;
  Widget newport, rhonddaCynonTaff, valeOfGlamorganAndTorfaen, blaenauGwent, caerphilly, cardiff, merthyrTydfil, south;
  void walesWidgets()
  {
    textFont(myFont);
    int widthW = 130;
    int heightW = 30;
    conwy = new Widget(1140, 350, widthW-50, heightW, EVENT_CONWY, "Conwy");
    widgetsWales.add(conwy);
    isleOfAnglesey = new Widget(1000, 300, widthW-10, heightW, EVENT_ISLE_OF_ANGLESEY, "Isle of Anglesey");
    widgetsWales.add(isleOfAnglesey);
    denbigshire = new Widget(1230, 400, widthW-30, heightW, EVENT_DENBIGSHIRE, "Denbigshire");
    widgetsWales.add(denbigshire);
    flintshire = new Widget(1300, 300, widthW-40, heightW, EVENT_FLINTSHIRE, "Flintshire");
    widgetsWales.add(flintshire);
    wrexham = new Widget(1340, 400, widthW-40, heightW, EVENT_WREXHAM, "Wrexham");
    widgetsWales.add(wrexham);
    ceredigion = new Widget(1020, 660, widthW-30, heightW, EVENT_CEREDIGION, "Ceredigion");
    widgetsWales.add(ceredigion);
    gwynedd = new Widget(1000, 400, widthW-40, heightW, EVENT_GWYNEDD, "Gwynedd");
    widgetsWales.add(gwynedd);
    powys = new Widget(1210, 640, widthW-60, heightW, EVENT_POWYS, "Powys");
    widgetsWales.add(powys);
    carmarthenshire = new Widget(1010, 800, widthW, heightW, EVENT_CARMARTHENSHIRE, "Carmarthenshire");
    widgetsWales.add(carmarthenshire);
    pembrokeshire = new Widget(850, 770, widthW, heightW, EVENT_PEMBROKESHIRE, "Pembrokeshire");
    widgetsWales.add(pembrokeshire);

    int widthS = 45;  

    bridgend = new Widget(1170, 925, widthS, heightW, EVENT_BRIDGEND, "BGE");
    widgetsWales.add(bridgend);
    swansea = new Widget(1060, 900, widthS, heightW, EVENT_SWANSEA, "SWA");
    widgetsWales.add(swansea);
    neathPortTalbot = new Widget(1155, 850, widthS, heightW, EVENT_NEATH_PORT_TALBOT, "NTL");
    widgetsWales.add(neathPortTalbot);
    rhonddaCynonTaff = new Widget(1215, 870, widthS, heightW, EVENT_RHONDDA_CYNON_TAFF, "RCT");
    widgetsWales.add(rhonddaCynonTaff);
    valeOfGlamorganAndTorfaen = new Widget(1215, 970, widthS+45, heightW, EVENT_VALE_OF_GLAMORGAN_AND_TORFAEN, "VGL + TOF");
    widgetsWales.add(valeOfGlamorganAndTorfaen);
    cardiff = new Widget(1290, 940, widthS, heightW, EVENT_CARDIFF, "CRF");
    widgetsWales.add(cardiff);
    merthyrTydfil = new Widget(1240, 825, widthS, heightW, EVENT_MERTHYR_TYDFIL, "MTY");
    widgetsWales.add(merthyrTydfil);
    blaenauGwent = new Widget(1280, 810, widthS, heightW, EVENT_BLAENAU_GWENT, "BGW");
    widgetsWales.add(blaenauGwent);
    caerphilly = new Widget(1280, 885, widthS, heightW, EVENT_CAERPHILLY, "CAY");
    widgetsWales.add(caerphilly);
    newport = new Widget(1340, 900, widthS, heightW, EVENT_NEWPORT, "NWP");
    widgetsWales.add(newport);
  }

  void drawWidgets(ArrayList widgets)
  {
    Widget temp;
    for (int index = 0; index < widgets.size(); index++)
    {
      temp = (Widget) widgets.get(index);
      temp.drawTextWidget();
    }
  }

  void moveWidgets(ArrayList list)
  {
    int height = 30;
    int width = 140;
    Widget temp;
    int event;
    for (int index = 0; index < list.size(); index++)
    {
      temp = ((Widget)list.get(index));
      event = ((Widget)list.get(index)).getEvent(mouseX, mouseY);
      switch(event)
      {
      case EVENT_ISLE_OF_ANGLESEY:
        temp.drawMovedText(mouseX, mouseY, width, height, "Isle of Anglesey");
        break;
      case EVENT_CONWY:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Conwy");
        break;
      case EVENT_DENBIGSHIRE:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Denbigshire");
        break;
      case EVENT_FLINTSHIRE:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Flintshire");
        break;
      case EVENT_WREXHAM:
        temp.drawMovedText(mouseX, mouseY,  width, height, "Wrexham");
        break;
      case EVENT_CEREDIGION:
        temp.drawMovedText(mouseX, mouseY,  width, height, "Ceredigion");
        break;
      case EVENT_GWYNEDD:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Gwynedd");
        break;
      case EVENT_POWYS:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Powys");
        break;
      case EVENT_BRIDGEND:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Bridgend");
        break;
      case EVENT_CARMARTHENSHIRE:
        temp.drawMovedText(mouseX, mouseY,  width, height, "Carmarthenshire");
        break;
      case EVENT_NEATH_PORT_TALBOT:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Neath Port Talbot");
        break;
      case EVENT_PEMBROKESHIRE:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Pembrokeshire");
        break;
      case EVENT_SWANSEA:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Swansea");
        break;
      case EVENT_MONMOUTHSHIRE:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Monmouthshire");
        break;
      case EVENT_NEWPORT:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Newport");
        break;
      case EVENT_RHONDDA_CYNON_TAFF:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Rhondda Cynon Taff");
        break;
      case EVENT_VALE_OF_GLAMORGAN_AND_TORFAEN:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Vale of Glamorgan aand Torfaen");
        break;
      case EVENT_BLAENAU_GWENT:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Blaenau Gwent");
        break;
      case EVENT_CAERPHILLY:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Caerphilly");
        break;
      case EVENT_CARDIFF:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Cardiff");
        break;
      case EVENT_MERTHYR_TYDFIL:
        temp.drawMovedText(mouseX, mouseY, width, height,  "Merthyr Tydfil");
        break;
      case EVENT_BRISTOL:
        temp.drawMovedText(mouseX,mouseY, width, height, "Bristol");
           break;
        case EVENT_BEDFORDSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Bedfordshire");
           break;
        case EVENT_BERKSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Berkshire");
           break;
        case EVENT_DURHAM:
        temp.drawMovedText(mouseX,mouseY, width, height, "Durham");
           break;        
        case EVENT_BUCKINGHAMSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Buckinghamshire");
           break;
        case EVENT_CAMBRIDGESHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Cambridgeshire");
           break;
        case EVENT_CHESHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Cheshire");
           break;
        case EVENT_CITY_OF_NOTTINGHAM:
        temp.drawMovedText(mouseX,mouseY, width, height, "Nottingham");
           break;
        case EVENT_CORNWALL:
        temp.drawMovedText(mouseX,mouseY, width, height, "Cornwall");
           break;
        case EVENT_CUMBRIA:
        temp.drawMovedText(mouseX,mouseY, width, height, "Cumbria");
           break;
        case EVENT_DERBYSHIRE: 
        temp.drawMovedText(mouseX,mouseY, width, height, "Derbyshire");
           break;
        case EVENT_DEVON:
        temp.drawMovedText(mouseX,mouseY, width, height, "Devon");
           break;
        case EVENT_DORSET:
        temp.drawMovedText(mouseX,mouseY, width, height, "Dorset");
           break;
        case EVENT_EAST_RIDING_OF_YORK:
        temp.drawMovedText(mouseX,mouseY, width, height, "East Riding of York");
           break;
        case EVENT_EAST_SUSSEX:
        temp.drawMovedText(mouseX,mouseY, width, height, "East Sussex");
           break;
        case EVENT_ESSEX:
        temp.drawMovedText(mouseX,mouseY, width, height, "Essex");
           break;
        case EVENT_GLOUCESTERSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Gloucestershire");
           break;
        case EVENT_GREATER_LONDON:
        temp.drawMovedText(mouseX,mouseY, width, height, "Greater London");
           break;
        case EVENT_GREATER_MANCHESTER:
        temp.drawMovedText(mouseX,mouseY, width, height, "Greater Manchester");
           break;
        case EVENT_HAMPSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Hampshire");
           break;
        case EVENT_HEREFORDSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Herefordshire");
           break;
        case EVENT_HERTFORDSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Hertfordshire");
           break;
        case EVENT_ISLE_OF_WIGHT:
        temp.drawMovedText(mouseX,mouseY, width, height, "Isle of Wight");
           break;
        case EVENT_KENT:
        temp.drawMovedText(mouseX,mouseY, width, height, "Kent");
           break;
        case EVENT_LANCASHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Lancashire");
           break;
        case EVENT_LEICESTERSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Leicestershire");
           break;
        case EVENT_LINCOLNSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Lincolnshire");
           break;
        case EVENT_MERSEYSIDE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Merseyside");
           break;
        case EVENT_NORFOLK:
        temp.drawMovedText(mouseX,mouseY, width, height, "Norfolk");
           break;
        case EVENT_NORTH_YORKSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "North Yorkshire");
           break;
        case EVENT_NORTHAMPTONSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Northamptonshire");
           break;
        case EVENT_NORTHUMBERLAND:
        temp.drawMovedText(mouseX,mouseY, width, height, "Northumberland");
           break;
        case EVENT_NOTTINGHAMSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Nottinghamshire");
           break;
        case EVENT_OXFORDSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Oxfordshire");
           break;
        case EVENT_RUTLAND:
        temp.drawMovedText(mouseX,mouseY, width, height, "Rutland");
           break;
        case EVENT_SHROPSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Shropshire");
           break; 
        case EVENT_SOMERSET:
        temp.drawMovedText(mouseX,mouseY, width, height, "Somerset");
           break;
        case EVENT_SOUTH_YORKSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "South Yorkshire");
           break;
        case EVENT_STAFFORDSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Staffordshire");
           break;
        case EVENT_SUFFOLK:
        temp.drawMovedText(mouseX,mouseY, width, height, "Suffolk");
           break;
        case EVENT_SURREY:
        temp.drawMovedText(mouseX,mouseY, width, height, "Surrey");
           break;
        case EVENT_TYNE_AND_WEAR:
        temp.drawMovedText(mouseX,mouseY, width, height, "Tyne and Wear");
           break;        
        case EVENT_WARWICKSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Warwickshire");
           break;
        case EVENT_WEST_MIDLANDS:
        temp.drawMovedText(mouseX,mouseY, width, height, "West Midlands");
           break;
        case EVENT_WEST_SUSSEX:
        temp.drawMovedText(mouseX,mouseY, width, height, "Sussex");
           break;
        case EVENT_WEST_YORKSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "West Yorkshire");
           break;
        case EVENT_WILTSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Wiltshire");
           break;        
        case EVENT_WORCESTERSHIRE:
        temp.drawMovedText(mouseX,mouseY, width, height, "Worcestershire");
           break;
      }
    }
  }

  void drawArea()
  {
    background(BACKGROUND);

    int margin = 150;

    fill(BACKGROUND_DARKER);
    noStroke();
    rect(0, 0, SCREENX, BACK_BUTTON);
    textAlign(CENTER);

    textFont(smallFont);
    fill(CHART);
    text("AREA", SCREENX/2, 55);
    textAlign(RIGHT);
    text("ENGLAND AND WALES SEPERATED BY COUNTY", 1400, 130);
    text("ENGLAND", (margin+(englandP.width/2)+70), (SCREENY/4)-60);
    text("WALES", (SCREENX-margin)-(walesP.width/2)+40, (SCREENY/4)-60);
    textFont(myFont2);
    fill(STROKE);
    text("Hover over a flag to see the counties and select a county to futher explore", 1400, 160);
    textAlign(CENTER);    
    rect((margin)-30, (SCREENY/4)-50, (englandP.width)+60, (englandP.height)+110, 7);
    image(englandP, margin, SCREENY/4);
    rect(((SCREENX-margin)-walesP.width)-30, (SCREENY/4)-50, (walesP.width)+60, (walesP.height)+110, 7);
    image(walesP, (SCREENX-margin)-walesP.width, SCREENY/4);
  }



  //---------------------------------------------------------------------------------    TYPE SCREEN    -----------------------------------------------------------------

 // Widget all_areas, detached, semi_detached, terrace, flat, other;
  Piechart pie; 
    int x = 800;  int y = 250;
    int yGap = 130;
    int heightT = 100;
    int widthT = 500;
    
    int pieX = 350;  int pieY = 350;
    int radius = 300;
    ArrayList typeData;
    ArrayList typeWidgets = new ArrayList();
     Widget all_areas= new Widget(this.x, y, this.widthT,this.heightT, EVENT_ALL, "All Areas");
     Widget   detached = new Widget(x, y+=yGap, widthT, heightT, EVENT_DETACHED, "Detached");
     Widget   semi_detached = new Widget(x, y+=yGap, widthT, heightT, EVENT_SEMI_DETACHED, "Semi-Detached");
     Widget   terrace = new Widget(x, y+=yGap, widthT, heightT, EVENT_TERRACED, "Terrace");
     Widget   flat = new Widget(x, y+=yGap, widthT, heightT, EVENT_FLATS, "Flat");
     Widget   other = new Widget(x, y+=yGap, widthT, heightT, EVENT_OTHER, "Other");

    
    Screen(ArrayList info, int tempx)
    {
      this.x = tempx;
      this.typeData = info;

    }
    
    ArrayList getTypeWidgets()
    {
       return this.typeWidgets; 
    }
    
    Widget getAllAreaWidget()
    {
       return this.all_areas; 
    }
    void setAllAreasWidget(Widget temp)
    {
       this.all_areas = temp; 
    }

void drawTypeWidgets(ArrayList widgets)
{
      Widget temp;  Piechart tempp;
    for (int index = 0; index < widgets.size(); index++)
    {
      if(index == 6)
      {
       tempp = (Piechart) widgets.get(index);
       tempp.drawPiechart();
      }
      else
      {
        temp = (Widget) widgets.get(index);
        temp.drawTextWidget();
      }
    }
}
  void drawType()
  {
    background(BACKGROUND);

    fill(BACKGROUND_DARKER);
    noStroke();
    rect(0, 0, SCREENX, BACK_BUTTON);
    textFont(smallFont);
    textAlign(CENTER);
    fill(CHART);
    text("TYPE", SCREENX/2, 60);

    textAlign(RIGHT);
    textFont(smallFont);
    text("DIFFERENT TYPES OF HOUES IN THIS AREA", 1400, 140);
    textFont(myFont2);
    fill(STROKE);
    text("Select a type of house to see prices of these type of house in "+area, 1400, 170);
    textAlign(CENTER);
    
    all_areas.drawTypeWidget();
    detached.drawTypeWidget();
    semi_detached.drawTypeWidget();
    terrace.drawTypeWidget();
    flat.drawTypeWidget();
    other.drawTypeWidget();
  }

  //------------------------------------------------------------------    FINAL SCREEN    ---------------------------------------------------------------------------

  ArrayList finalData;
  House temp;

  Widget    low2h = new Widget(SCREENX/2-280, 100, 200, 50, "low to high", color(BACKGROUND_DARKER), stdFont, EVENT_LOW2HIGH, 10);
  Widget  high2l = new Widget(SCREENX/2+50, 100, 200, 50, "high to low", color(BACKGROUND_DARKER), stdFont, EVENT_HIGH2LOW, 10);
  
    Screen(ArrayList fullyRefined)
  {
    finalData = fullyRefined;
  }

  void drawFinal()
  {
    background(BACKGROUND);
    fill(STROKE);
    textFont(stdFont);
    low2h.drawFinal();
    high2l.drawFinal();
    fill(BACKGROUND_DARKER);
    rect(0, 0, SCREENX, BACK_BUTTON);
    fill(CHART);
    textFont(smallFont);
    textAlign(CENTER);
    text("FINAL SORTED DATA LIST", 760, 48);
  }

  void mouseMoved()
  {
    if (home)
    {
      int widthMoved = 60;
      int heightMoved = 20;
      int event;
      for (int index = 0; index <(homeScreen.Widgets).size(); index++)
      {
        event = ((Widget)(homeScreen.Widgets).get(index)).getEvent(mouseX, mouseY);
        switch(event)
        {
        case EVENT_2000:
          ((Widget)(homeScreen.Widgets.get(0))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(0))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2000");
          break;
        case EVENT_2001:
          ((Widget)(homeScreen.Widgets.get(1))).drawMoved(); 
          ((Widget)(homeScreen.Widgets.get(1))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2001");
          break;
        case EVENT_2002:
          ((Widget)(homeScreen.Widgets.get(2))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(2))).drawMovedText(mouseX, mouseY,widthMoved, heightMoved,"2002");
          break;
        case EVENT_2003:
          ((Widget)(homeScreen.Widgets.get(3))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(3))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2003");
          break;
        case EVENT_2004:
          ((Widget)(homeScreen.Widgets.get(4))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(4))).drawMovedText(mouseX, mouseY,widthMoved, heightMoved,"2004");
          break;
        case EVENT_2005:
          ((Widget)(homeScreen.Widgets.get(5))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(5))).drawMovedText(mouseX, mouseY,widthMoved, heightMoved,"2005");
          break;
        case EVENT_2006:
          ((Widget)(homeScreen.Widgets.get(6))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(6))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2006");
          break;
        case EVENT_2007:
          ((Widget)(homeScreen.Widgets.get(7))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(7))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2007");
          break;
        case EVENT_2008:
          ((Widget)(homeScreen.Widgets.get(8))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(8))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2008");
          break;
        case EVENT_2009:
          ((Widget)(homeScreen.Widgets.get(9))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(9))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved,"2009");
          break;
        case EVENT_2010:
          ((Widget)(homeScreen.Widgets.get(10))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(10))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2010");
          break;
        case EVENT_2011:
          ((Widget)(homeScreen.Widgets.get(11))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(11))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved,"2011");
          break;
        case EVENT_2012:
          ((Widget)(homeScreen.Widgets.get(12))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(12))).drawMovedText(mouseX, mouseY,widthMoved, heightMoved,"2012");
          break;
        case EVENT_2013:
          ((Widget)(homeScreen.Widgets.get(13))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(13))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2013");
          break;
        case EVENT_2014:
          ((Widget)(homeScreen.Widgets.get(14))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(14))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2014");
          break;
        case EVENT_2015: 
          ((Widget)(homeScreen.Widgets.get(15))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(15))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2015");
          break;
        case EVENT_2016:
          ((Widget)(homeScreen.Widgets.get(16))).drawMoved();
          ((Widget)(homeScreen.Widgets.get(16))).drawMovedText(mouseX, mouseY,widthMoved,heightMoved, "2016");
          break;
        }
      }
    } else if (area)
    {
      if (englandWidget.getEvent(mouseX, mouseY) == EVENT_ENGLAND)
      {
        drawEngland();
        englandWidgets();
        drawWidgets(widgetsEngland);
        moveWidgets(widgetsEngland);
      } else if (walesWidget.getEvent(mouseX, mouseY) == EVENT_WALES)
      {
        drawWales();
        walesWidgets();
        drawWidgets(widgetsWales);
        moveWidgets(widgetsWales);
      } else
      {
        englandWidget.setwidth(englandP.width);
        englandWidget.setheight(englandP.height);
        walesWidget.setwidth(walesP.width);
        walesWidget.setheight(walesP.height);
      }
    } else if (type)
    {
      
    } else if (finalS)
    {
    }
  }
}