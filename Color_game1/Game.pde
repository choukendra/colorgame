int rng;
int choice;
int coin;
int t = 120;

void game() {
  noStroke();
  fill(255); 
  rect(0, 0, width/2, height);
  fill(0);
  rect(width/2, 0, width, height);
  text("TRUE", 150, 50);
  fill(255);
  text("FALSE", 450, 50);
  textSize(t);
  fill(colors[choice]);
  text("" + colorWords[rng], width/2, height/2);

  textSize(50);
  fill(#F2D2D2);
  text("POINTS:"+ points, width/2, 530);
  fill(255);
  textSize(70);

  //  coin = int(random(0, 1));



  t--;

  if (t <= 0) {
    mode = gameover;
    if (hs < points) {
      hs = points;
    }
  }
}

void press() {
  t = 120;
  //coin = int(random(0, 2));
  //if (coin == 0) {

  //  choice = int(random(0, 6));     
  //  rng = choice;
  //} else {
  //  choice = int(random(0, 6));   
  //  rng = int(random(0, 6));
  //}
  if (mouseX<300 && mouseX>0 && choice == rng) {
    rng = int(random(0, 6));
    println("colorWords[rng] = " + colorWords[rng]);
    //choice = int(random(0, 6));
    println("choice = " + choice);
    println("true");

    coin = int(random(0, 2));

    points++;
  } else if (mouseX<600 && mouseX>300 && choice != rng) {
    rng = int(random(0, 6));
    println("colorWords[rng] = " + colorWords[rng]);
    choice = int(random(0, 6));   
    println("choice = " + choice);
    println("true");

    // coin = int(random(0, 2));

    points++;
  } else {
    println("false");
    mode = gameover;
    if (hs < points) {
      hs = points;
    }
  }
}
