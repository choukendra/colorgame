ArrayList<PImage> gif; //declaration
int n = 0;

int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;
int x;
int points = 0;
int hs = 0;
color red = #F05446;
color orange = #F0B977;
color yellow = #F0EC77;
color green = #A2F077;
color blue = #77ACF0;
color purple = #CD93EA;
PFont font;

color[] colors =  {red, orange, yellow, green, blue, purple};

String[] colorWords = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE"};
//words[0] = "RED"; //To assign values in array 


//ArrayList<String> words = new ArrayList<String>();
//<color> colors = new ArrayList<color>();
//words.add("RED");
//words.add("YELLOW");
//words.add("ORANGE");
//words.add("GREEN");
//words.add("BLUE");
//words.add("PURPLE");
//words.add("PINK");

void setup() {
  gif = new ArrayList<PImage>(72);
  int i = 0;
  String zero;
  while (i <= 71) {
    if (i<10) {
      zero = "0";
    } else {
      zero = "";
    }
    PImage temp = loadImage("frame_" + zero + i + "_delay-0.03s.jpg");
    temp.resize(width, height);
    gif.add(temp);
    i++;
  }
  font = createFont("SuperMario256.ttf", 5);
  textFont(font);
  textAlign(CENTER, CENTER);
  textSize(70);
  size(600, 600);

  //  println("rng = " + rng);
  //  println("choice = " + choice);

  //  println("colors[choice] = " + colors[choice]);
  //  println("colorWords[rng] = " + colorWords[rng]);
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Mode error Mode was " + mode);
  }
}

void mouseReleased() {
  if (mode == intro) {
    mode = game;
  } else if (mode == game) {
    press();
  } else if (mode == gameover) {
    mode = intro;
  } else {
    println("Mode error Mode was " + mode);
  }
}
