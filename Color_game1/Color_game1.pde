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
