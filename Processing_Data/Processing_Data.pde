import java.util.*; //<>//
import java.awt.TextField;

PFont myFont;  
PFont titleFont;  
PFont smallFont;  
PFont myFont2;  
PFont stdFont;  
PFont myFontBold;  
PFont listFont;  
PFont smallFont2;
String[] data;
PImage trinitylogo;
PImage back, englandPic, walesPic, englandM, walesM;


House temp;
ArrayList screens;
Widget backButton;

// HOME SCREEN
ArrayList houses;  
ArrayList startGraph;  
ArrayList averages;  
Screen homeScreen;

// Area Screen
ArrayList yearRefined = new ArrayList();;
Screen areaScreen;

// Type Screen
ArrayList areaRefined = new ArrayList();
Screen typeScreen;

// Final Screen
ArrayList typeRefined = new ArrayList();
Screen finalScreen;

// screens
boolean old = false;  
boolean home = true;
boolean area = false;
boolean type = false;
boolean finalS = false;

boolean englandPicked = false;
boolean walesPicked = false;

int screensIndex = 0;


void settings()
{
  size(SCREENX, SCREENY);
}

void setup()
{

  frameRate(50);

  myFont = loadFont("NirmalaUI-16.vlw");
  myFontBold = loadFont("NirmalaUI-Bold-16.vlw");
  myFont2 = loadFont("NirmalaUI-Semilight-20.vlw");
  titleFont = loadFont("NirmalaUI-50.vlw");
  smallFont = loadFont("NirmalaUI-Semilight-30.vlw");
  stdFont=loadFont("NirmalaUI-35.vlw");
  listFont = loadFont("NirmalaUI-Bold-18.vlw");
  smallFont2 = loadFont("NirmalaUI-15.vlw");
  trinitylogo = loadImage("trinity.PNG");
  back = loadImage("back.png");
  englandPic = loadImage("england.png");
  walesPic = loadImage("wales.png");
  englandM = loadImage("englandMap.png");
  walesM = loadImage("walesMap2.png");

  screens = new ArrayList();

  //back button
  backButton = new Widget(0, 0, BACK_BUTTON, BACK_BUTTON-1, back, color(255, 10, 10), EVENT_BACKB);

  //--------------------------------------   CREATING HOUSES AND FILLING ARRAY   ---------------------------------

  data = loadStrings("pp-1month.csv");

  houses = new ArrayList();    

  for (int index = 0; index < data.length; index++)
  {
    temp = new House(data[index]);
    houses.add(temp);
  }

  //--------------------------------------              HOME SCREEN             -----------------------------------

  averages = new ArrayList();

  for (int index = 0; index <= MAX_YEAR; index++)
  {
    String year;
    if (index == 0)
    {
      year = "00";
    } else if (index < 10 && index > 0)
    {
      year = "0"+index;
    } else
    {
      year = ""+index;
    }
    startGraph = refine(houses, INITIAL_QUERY, year);
    if (year == "00")
    {
      println(startGraph.size());
    }
    int averagePricePerYear = getAverage(startGraph);
    averages.add(averagePricePerYear);
  }
  homeScreen = new Screen(averages, trinitylogo);
  screens.add(homeScreen);    // index = 0
}

//-------------------------------------------------------------------------      MOUSE PRESSED      ----------------------------------------------------------------------------------------------------\\
       void setYearRefined(ArrayList data)
       {
           this.yearRefined = data;
       }
        
       ArrayList getYearRefined()
       {
         println(yearRefined.size());
           return this.yearRefined; 
       }
       
       void setAreaRefined(ArrayList data)
       {
           this.areaRefined = data;
       }
       
       ArrayList getAreaRefined()
       {
         println(areaRefined.size());
           return this.areaRefined;
       }
       
       void setTypeRefined(ArrayList data)
       {
           this.typeRefined = data;
       }
       
       ArrayList getTypeRefined()
       {
           return this.typeRefined;
       }
       
       void makeAreaScreen()
        {
            areaScreen = new Screen(englandPic, walesPic, englandM, walesM);
            screens.add(areaScreen);
            if (screensIndex == 0)
            {
              screensIndex++;
            }
            home = false;
            area = true;
        }
        
        void makeTypeScreen()
        {
            typeScreen = new Screen(areaRefined,1100);
            screens.add(typeScreen);
            if (screensIndex == 1)
            {
              screensIndex++;
            }
            area = false;
            type = true;
        }
        
      void makeFinalScreen()
      {
          finalScreen = new Screen(getTypeRefined());
          screens.add(finalScreen);
          if (screensIndex == 2)
          {
            screensIndex++;
          }
          type = false;
          finalS = true;        
      }

void mousePressed()
{
  // BACK BUTTON

  if (backButton.getEvent(mouseX, mouseY) == EVENT_BACKB)
  {
    screens.remove(screens.get(screensIndex));
    screensIndex--;
    println(screensIndex);
    if (screensIndex == 0)
    {
      home = true; 
      area = false; 
      type = false; 
      finalS = false;
    } else if (screensIndex == 1)
    {
      area = true; 
      home = false; 
      type = false; 
      finalS = false;
    } else if (screensIndex == 2)
    {
      type = true; 
      home = false; 
      area = false; 
      finalS = false;
    } else if (screensIndex == 3)
    {
      finalS = true; 
      home = false; 
      area = false; 
      type = false;
    }
  } else if (home)     // HOME SCREEN WIDGETS
  {
    int event;
    String year = "";
    for (int index = 0; index <(homeScreen.Widgets).size(); index++)
    {
      event = ((Widget)(homeScreen.Widgets).get(index)).getEvent(mouseX, mouseY);

      switch(event)
      {
      case EVENT_2000:
        ((Widget)(homeScreen.Widgets.get(0))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "00"));
        makeAreaScreen();
        break;
      case EVENT_2001:
        ((Widget)(homeScreen.Widgets.get(1))).drawPressed(); 
        year = "0"+index;
        setYearRefined(refine(houses, "date", "01"));
        makeAreaScreen();
        break;
      case EVENT_2002:
        ((Widget)(homeScreen.Widgets.get(2))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "02"));
        makeAreaScreen();
        break;
      case EVENT_2003:
        ((Widget)(homeScreen.Widgets.get(3))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "03"));
        makeAreaScreen();
        break;
      case EVENT_2004:
        ((Widget)(homeScreen.Widgets.get(4))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "04"));
        makeAreaScreen();
      case EVENT_2005:
        ((Widget)(homeScreen.Widgets.get(5))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "05"));
        makeAreaScreen();
        break;
      case EVENT_2006:
        ((Widget)(homeScreen.Widgets.get(6))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "06"));
        makeAreaScreen();
        break;
      case EVENT_2007:
        ((Widget)(homeScreen.Widgets.get(7))).drawPressed();
        year = "200"+index;
        setYearRefined(refine(houses, "date", "07"));
        makeAreaScreen();
        break;
      case EVENT_2008:
        ((Widget)(homeScreen.Widgets.get(8))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "08"));
        makeAreaScreen();
        break;
      case EVENT_2009:
        ((Widget)(homeScreen.Widgets.get(9))).drawPressed();
        year = "0"+index;
        setYearRefined(refine(houses, "date", "09"));
        makeAreaScreen();
        break;
      case EVENT_2010:
        ((Widget)(homeScreen.Widgets.get(10))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date", "10"));
        makeAreaScreen();
        break;
      case EVENT_2011:
        ((Widget)(homeScreen.Widgets.get(11))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date", "11"));
        makeAreaScreen();
        break;
      case EVENT_2012:
        ((Widget)(homeScreen.Widgets.get(12))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date","12"));
        makeAreaScreen();
        break;
      case EVENT_2013:
        ((Widget)(homeScreen.Widgets.get(13))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date", "13"));
        makeAreaScreen();
        break;
      case EVENT_2014:
        ((Widget)(homeScreen.Widgets.get(14))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date", "14"));
        makeAreaScreen();
        break;
      case EVENT_2015:
        ((Widget)(homeScreen.Widgets.get(15))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date", "15"));
        makeAreaScreen();
        break;
      case EVENT_2016:
        ((Widget)(homeScreen.Widgets.get(16))).drawPressed();
        year = ""+index;
        setYearRefined(refine(houses, "date", "16"));
        makeAreaScreen();
        break;
      }
    }
  } else if (area)    // AREA SCREEN WIDGETS
  {
    Widget tempW;  
    int event;
    for (int index = 0; index < ((Screen)screens.get(1)).widgetsWales.size(); index++)
    {
      tempW = ((Widget)(((Screen)screens.get(1)).widgetsWales).get(index));
      event = tempW.getEvent(mouseX, mouseY);
      switch(event)
      {
      case EVENT_ISLE_OF_ANGLESEY:
        setAreaRefined(refine(getYearRefined(), "county", "ISLE OF ANGLESEY"));
        makeTypeScreen();
        break;
      case EVENT_CONWY:
        setAreaRefined(refine(getYearRefined(), "county", "CONWY"));
        makeTypeScreen();
        break;
      case EVENT_DENBIGSHIRE:
        setAreaRefined(refine(getYearRefined(), "county", "DENBIGSHIRE"));
        makeTypeScreen();
        break;
      case EVENT_FLINTSHIRE:
        setAreaRefined(refine(getYearRefined(), "county", "FLINTSHIRE"));
        makeTypeScreen();
        break;
      case EVENT_WREXHAM:
        setAreaRefined(refine(getYearRefined(), "county", "WREXHAM"));
        makeTypeScreen();
        break;
      case EVENT_CEREDIGION:
        setAreaRefined(refine(getYearRefined(), "county", "CEREDIGION"));
        makeTypeScreen();
        break;
      case EVENT_GWYNEDD:
        setAreaRefined(refine(getYearRefined(), "county", "GWYNEDD"));
        makeTypeScreen();
        break;
      case EVENT_POWYS:
        setAreaRefined(refine(getYearRefined(), "county", "POWYS"));
        makeTypeScreen();
        break;
      case EVENT_BRIDGEND:
        setAreaRefined(refine(getYearRefined(), "county", "BRIDGEND"));
        makeTypeScreen();
        break;
      case EVENT_CARMARTHENSHIRE:
        setAreaRefined(refine(getYearRefined(), "county", "CARMARTHENSHIRE"));
        makeTypeScreen();
        break;
      case EVENT_NEATH_PORT_TALBOT:
        setAreaRefined(refine(getYearRefined(), "county", "NEATH PORT TALBOT"));
        makeTypeScreen();
        break;
      case EVENT_PEMBROKESHIRE:
        setAreaRefined(refine(getYearRefined(), "county", "PEMBROKESHIRE"));
        makeTypeScreen();
        break;
      case EVENT_SWANSEA:
        setAreaRefined(refine(getYearRefined(), "county", "SWANSEA"));
        makeTypeScreen();
        break;
      case EVENT_MONMOUTHSHIRE:
        setAreaRefined(refine(getYearRefined(), "county", "MONMOUTHSHIRE"));
        makeTypeScreen();
        break;
      case EVENT_NEWPORT:
        setAreaRefined(refine(getYearRefined(), "county", "NEWPORT"));
        makeTypeScreen();
        break;
      case EVENT_RHONDDA_CYNON_TAFF:
        setAreaRefined(refine(getYearRefined(), "county", "RHONDDA CYNON TAFF"));
        makeTypeScreen();
        break;
      case EVENT_VALE_OF_GLAMORGAN_AND_TORFAEN:
        setAreaRefined(refine(getYearRefined(), "county", "VALE OF GLAMORGAN AND TORFEAN"));
        makeTypeScreen();
        break;
      case EVENT_BLAENAU_GWENT:
        setAreaRefined(refine(getYearRefined(), "county", "BLAENAU GWENT"));
        makeTypeScreen();
        break;
      case EVENT_CAERPHILLY:
        setAreaRefined(refine(getYearRefined(), "county", "CAERPHLLY"));
        makeTypeScreen();
        break;
      case EVENT_CARDIFF:
        setAreaRefined(refine(getYearRefined(),"county","CARDIFF"));
                if(getYearRefined() == null)
        {
          println("year null");
        }
        if(getAreaRefined() != null)
        {
          println(getAreaRefined().size());
        }
        makeTypeScreen();
        break;
      case EVENT_MERTHYR_TYDFIL:
        setAreaRefined(refine(getYearRefined(), "county", "MERTHYR TYDFIL"));
        makeTypeScreen();
        break;
      }
    }
    for (int indexTwo = 0; indexTwo < ((Screen)screens.get(1)).widgetsEngland.size(); indexTwo++)
    {
      tempW = ((Widget)(((Screen)screens.get(1)).widgetsEngland).get(indexTwo));
      event = tempW.getEvent(mouseX, mouseY);
      switch(event)
      {  
        case EVENT_BRISTOL:
           setAreaRefined(refine(getYearRefined(),"county","BRISTOL"));
           makeTypeScreen();           
           break;
        case EVENT_BEDFORDSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","BEDFORDSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_BERKSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","BERKSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_DURHAM:
           setAreaRefined(refine(getYearRefined(),"county","DURHAM"));
           makeTypeScreen();           
           break;        
        case EVENT_BUCKINGHAMSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","BUCKINGHAMSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_CAMBRIDGESHIRE:
           setAreaRefined(refine(getYearRefined(),"county","CAMBRIDGESHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_CHESHIRE:
           setAreaRefined(refine(getYearRefined(),"county","CHESHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_CITY_OF_NOTTINGHAM:
           setAreaRefined(refine(getYearRefined(),"county","NOTTINGHAM"));
           makeTypeScreen();           
           break;
        case EVENT_CORNWALL:
           setAreaRefined(refine(getYearRefined(),"county","CORNWALL"));
           makeTypeScreen();           
           break;
        case EVENT_CUMBRIA:
           setAreaRefined(refine(getYearRefined(),"county","CUMBRIA"));
           makeTypeScreen();           
           break;
        case EVENT_DERBYSHIRE: 
           setAreaRefined(refine(getYearRefined(),"county","DERBYSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_DEVON:
           setAreaRefined(refine(getYearRefined(),"county","DEVON"));
           makeTypeScreen();           
           break;
        case EVENT_DORSET:
           setAreaRefined(refine(getYearRefined(),"county","DORSET"));
           makeTypeScreen();           
           break;
        case EVENT_EAST_RIDING_OF_YORK:
           setAreaRefined(refine(getYearRefined(),"county","EAST RIDING OF YORK"));
           makeTypeScreen();           
           break;
        case EVENT_EAST_SUSSEX:
           setAreaRefined(refine(getYearRefined(),"county","EAST SUSSEX"));
           makeTypeScreen();           
           break;
        case EVENT_ESSEX:
           setAreaRefined(refine(getYearRefined(),"county","ESSEX"));
           makeTypeScreen();           
           break;
        case EVENT_GLOUCESTERSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","GLOUCESTERSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_GREATER_LONDON:
           setAreaRefined(refine(getYearRefined(),"county","GREATER LONDON"));
           makeTypeScreen();           
           break;
        case EVENT_GREATER_MANCHESTER:
           setAreaRefined(refine(getYearRefined(),"county","GREATER MANCHESTER"));
           makeTypeScreen();           
           break;
        case EVENT_HAMPSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","HAMPSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_HEREFORDSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","HEREFORDSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_HERTFORDSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","HERTFORDSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_ISLE_OF_WIGHT:
           setAreaRefined(refine(getYearRefined(),"county","ISLE OF WIGHT"));
           makeTypeScreen();
           break;
        case EVENT_KENT:
           setAreaRefined(refine(getYearRefined(),"county","KENT"));
           makeTypeScreen();           
           break;
        case EVENT_LANCASHIRE:
           setAreaRefined(refine(getYearRefined(),"county","LANCASHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_LEICESTERSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","LEICESTERSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_LINCOLNSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","LINCOLNSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_MERSEYSIDE:
           setAreaRefined(refine(getYearRefined(),"county","MERSEYSIDE"));
           makeTypeScreen();           
           break;
        case EVENT_NORFOLK:
           setAreaRefined(refine(getYearRefined(),"county","NORFOLK"));
           makeTypeScreen();           
           break;
        case EVENT_NORTH_YORKSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","NORTH YORKSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_NORTHAMPTONSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","NORTHAMPTONSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_NORTHUMBERLAND:
           setAreaRefined(refine(getYearRefined(),"county","NORTHUMBERLAND"));
           makeTypeScreen();           
           break;
        case EVENT_NOTTINGHAMSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","NOTTINGHAMSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_OXFORDSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","OXFORDSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_RUTLAND:
           setAreaRefined(refine(getYearRefined(),"county","RUTLAND"));
           makeTypeScreen();           
           break;
        case EVENT_SHROPSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","SHROPSHIRE"));
           makeTypeScreen();           
           break; 
        case EVENT_SOMERSET:
           setAreaRefined(refine(getYearRefined(),"county","SOMERSET"));
           makeTypeScreen();           
           break;
        case EVENT_SOUTH_YORKSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","SOUTH YORKSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_STAFFORDSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","STAFFORDSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_SUFFOLK:
           setAreaRefined(refine(getYearRefined(),"county","SUFFOLK"));
           makeTypeScreen();           
           break;
        case EVENT_SURREY:
           setAreaRefined(refine(getYearRefined(),"county","SURREY"));
           makeTypeScreen();           
           break;
        case EVENT_TYNE_AND_WEAR:
           setAreaRefined(refine(getYearRefined(),"county","TYNE AND WEAR"));
           makeTypeScreen();           
           break;        
        case EVENT_WARWICKSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","WARWICKSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_WEST_MIDLANDS:
           setAreaRefined(refine(getYearRefined(),"county","WEST MIDLANDS"));
           makeTypeScreen();           
           break;
        case EVENT_WEST_SUSSEX:
           setAreaRefined(refine(getYearRefined(),"county","WEST SUSSEX"));
           makeTypeScreen();           
           break;
        case EVENT_WEST_YORKSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","WEST YORKSHIRE"));
           makeTypeScreen();           
           break;
        case EVENT_WILTSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","WILTSHIRE"));
           makeTypeScreen();           
           break;        
        case EVENT_WORCESTERSHIRE:
           setAreaRefined(refine(getYearRefined(),"county","WORCESTERSHIRE"));
           makeTypeScreen();           
           break;
      }
      
    }
  } else if (type)    // TYPE SCREEN WIDGETS
  {
    if ((typeScreen.all_areas).getEvent(mouseX, mouseY) == EVENT_ALL)
    {
      setTypeRefined(areaRefined);
      makeFinalScreen();
    } else if ((typeScreen.detached).getEvent(mouseX, mouseY) == EVENT_DETACHED)
    {
      setTypeRefined(refine(getAreaRefined(),"type","D"));
      makeFinalScreen();
    } else if ((typeScreen.semi_detached).getEvent(mouseX, mouseY) == EVENT_SEMI_DETACHED)
    {
      setTypeRefined(refine(getAreaRefined(),"type","S"));
      makeFinalScreen();
    } else if ((typeScreen.terrace).getEvent(mouseX, mouseY) == EVENT_TERRACED)
    {
      setTypeRefined(refine(getAreaRefined(),"type","T"));
      makeFinalScreen();
    } else if ((typeScreen.flat).getEvent(mouseX, mouseY) == EVENT_FLATS)
    {
      setTypeRefined(refine(getAreaRefined(),"type","F"));
      makeFinalScreen();
    } else if ((typeScreen.other).getEvent(mouseX, mouseY) == EVENT_OTHER)
    {
      setTypeRefined(refine(getAreaRefined(),"type","O"));
      makeFinalScreen();
    }
  } else if (finalS)  // FINAL SCREEN WIDGETS
  {
    if ((finalScreen.low2h).getEvent(mouseX, mouseY) == EVENT_LOW2HIGH)
    {
      areaRefined = lowToHigh(typeRefined);
    } else if ((finalScreen.high2l).getEvent(mouseX, mouseY) == EVENT_HIGH2LOW)
    {
      areaRefined = highToLow(typeRefined);
    } 
  }
 }

ArrayList oldL, newL;

//-----------------------------------------------------------------------------    DRAW MAIN      ----------------------------------------------------------------------------------------------------------------
Piechart pie;
    int pieX = 380;  int pieY = 520;
    int radius = 500;

void draw()
{
  if (home)
  {
    ((Screen)screens.get(0)).draw();
    ((Screen)screens.get(0)).mouseMoved();
  } else if (area)
  {
    ((Screen)screens.get(1)).drawArea();
    ((Screen)screens.get(1)).mouseMoved();
    backButton.drawBack();
    backButton.mouseMoved();
    fill(255);
  } else if (type)
  {
    ((Screen)screens.get(2)).drawType();
    if(getAreaRefined().size() == 0)
    {
      fill(CHART);
      textFont(titleFont);
      text("There are no houses \nfrom this year, in this area",400,SCREENY/2);
    }
    else
    {
      pie = new Piechart(getAreaRefined(),pieX,pieY,radius);
      pie.drawPiechart();
      pie.drawKey();
    }
    ((Screen)screens.get(2)).mouseMoved();
    backButton.drawBack();
    backButton.mouseMoved();
  } else if (finalS)
  {
    ((Screen)screens.get(3)).drawFinal();
    drawList();
    ((Screen)screens.get(3)).mouseMoved();
    
    backButton.drawBack();
    backButton.mouseMoved();
  }
}


//---------------------------------------------------------------------------------      REFINING DATA      -------------------------------------------------------------------------------------

ArrayList refine(ArrayList array, String type, String value)
{
  ArrayList newArr = new ArrayList();
  House temp;
  if (type.equals("county"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));

      if ((temp.county).equals(value))
      {
        newArr.add(array.get(index));
      }
    }
    return newArr;
  } else if (type.equals("district"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.district).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("town"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.town).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("locality"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.locality).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("street"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.street).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("number"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.number).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("postcode"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.postcode).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("date"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      String tempDate = temp.date;
      tempDate = tempDate.substring(6, 8);
      if (tempDate.equals(value))
      {
        newArr.add(array.get(index));
      }
    }
    return newArr;
  } else if (type.equals("type"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.type).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else if (type.equals("old_new"))
  {
    for (int index = 0; index < array.size(); index++)
    {
      temp = (House)(array.get(index));
      if ((temp.old_new).equals(value))
        newArr.add(array.get(index));
    }
    return newArr;
  } else
  {
    return newArr;
  }
}


//------------------------------------------------------------------------------      GET AVERAGE    -----------------------------------------------------------------------------------------------
  String info1, info2, info3, info4, info5, info6;
  ArrayList finalL;
void drawList()
{
      fill(255);
    rect(75, 180, 1350, 880, 7);
    fill(CHART);
    textFont(listFont);
    int x = 20;
    int y = 200;
    textAlign(LEFT);
    text("HOUSE NUMBER", 90, y);
    text("STREET", 320, y);
    text("TOWN", 610, y);
    text("DISTRICT", 820, y);
    text("COUNTY", 1068, y);
    text("POSTCODE", 1315, y);
    for (int index = 0; index < typeRefined.size(); index++)
    {
      temp = (House)typeRefined.get(index);
      fill(80);
      textFont(smallFont2);
      //info = ""+temp.number+"      "+temp.street+"      "+temp.town+"      "+temp.district+"      "+temp.county+"      "+temp.postcode+"\n\n\n\n";
      info1 = ""+temp.number;
      textAlign(LEFT);
      text(info1, 90, y+30);
      info2 = ""+temp.street;
      text(info2, 320, y+30);
      info3 = ""+temp.town;
      text(info3, 610, y+30);
      info4 = ""+temp.district;
      text(info4, 820, y+30);
      info5 = ""+temp.county;
      text(info5, 1068, y+30);
      info6 = ""+temp.postcode;
      text(info6, 1315, y+30);


      y+=30;
    }

}

int getAverage(ArrayList array)
{
  int total = 0;
  for (int index = 0; index < array.size(); index++)
  {
    temp = (House)array.get(index);
    total += temp.price;
  }
  int size =  array.size();
  total /= size;

  return total;
}


//  ------------------------------------------------------------------------------     SORT HOUSES PRICES FROM LOW TO HIGH    -------------------------------------------------------------------------------


ArrayList lowToHigh(ArrayList data)
{
  Collections.sort(data, new PriceSort()); 

  return data;
}


//----------------------------------------------------------------------------    SORT HOUSE PRICES FROM HIGH TO LOW      ---------------------------------------------------------------------------------------


ArrayList highToLow(ArrayList data) 
{
  Collections.reverse(lowToHigh(data));
  return data;
}