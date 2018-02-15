int stage = 0;
int trial = 0;
PImage back;
PImage chem;
PImage blast;
PImage finall;
PImage wrong;

PImage carbon;
PImage oxygen;
PImage silicon;
PImage iron;
PImage calcium;

PImage carbonb;
PImage oxygenb;
PImage siliconb;
PImage ironb;
PImage calciumb;

PImage feo;
PImage coo;
PImage co;
PImage casio;
PImage o2;
PImage caco3;
PImage caoI;

int cc = 0;
int oc = 0;
int sic = 0;
int fec = 0;
int cac = 0;

int co2 = 0;
int co1 = 0;
int casio3 = 0;
int c = 0;
int fe2o3 = 0;
int oo = 0;
int caco = 0;
int cao = 0;
int fe = 0;

PImage coIr;
PImage cIr;
PImage hematiteI;
PImage slagI;
PImage caoIr;

int cor = 0;
int cr = 0;
int hematite = 0;
int slag = 0;
int caor = 0;

void setup() {
  size(1350, 900);
  background(255, 255, 255);
  back = loadImage("back.jpg");
  chem = loadImage("images.jpg");
  blast = loadImage("blast.jpg");
  finall = loadImage("final.JPG");
  wrong = loadImage("wrong.jpg");

  carbon = loadImage("carbon.png");
  oxygen = loadImage("oxygen.png");
  silicon = loadImage("silicon.png");
  iron = loadImage("iron.png");
  calcium = loadImage("calcium.png");

  carbonb = loadImage("carbonb.png");
  oxygenb = loadImage("oxygenb.png");
  siliconb = loadImage("siliconb.png");
  ironb = loadImage("ironb.png");
  calciumb = loadImage("calciumb.png");

  feo = loadImage("fe2o3.png");
  coo = loadImage("co2.png");
  co = loadImage("co.jpg");
  casio = loadImage("casio3.png");
  o2 = loadImage("o2.png");
  caoI = loadImage("cao.jpg");
  caco3 = loadImage("caco3.png");
  
  cIr = loadImage("crI.png");
  coIr = loadImage("coI.png");
  hematiteI = loadImage("hematite.jpg");
  slagI = loadImage("slag.jpg");
  caoIr = loadImage("caor.png");

  println("To crete the elements click on the boxes of atoms to add a new atom to the list. When you have the correct amount of each atom to form a molecule press 'e'. When you have all molecules, you pass to the next stage.");
}

void begin() {
  image(back, 0, 0);
  fill(0, 0, 255);
  rect(1050, 800, 300, 100);
  fill(0, 0, 0);
  textSize(100);
  text("Start", 1100, 890);

  image(chem, width/2 - chem.width/2, height/5 - chem.height/2);
  image(blast, width/2 - blast.width/2, height/2 - blast.height/2);

  if ((mouseX > 1050)&&(mouseY > 800)&&(mousePressed)) {
    background(255, 255, 255);
    stage++;
  }
}

void pile() {  
  fill(255, 0, 0);
  rect(0, 0, 1350, 50);
  fill(0, 0, 0);
  textSize(25);
  text("First create the reagents and products that are needed to make the blast furnace work.", 5, 30);

  fill(255, 235, 205);

  rect(width/2 - carbon.width/2 - 7, 93, 107, 107);
  rect(width*2/3 - carbon.width/2 - 7, height - oxygen.height - 107, 107, 107);
  rect(width/3 - carbon.width/2 - 7, height - oxygen.height - 107, 107, 107);
  rect(width/5 - carbon.width/2 - 7, height/2 - oxygen.height - 7, 107, 107);
  rect(width*4/5 - carbon.width/2 - 7, height/2 - oxygen.height - 7, 107, 107);

  image(oxygenb, width/2 - carbon.width/2, 100);
  image(carbonb, width*2/3 - carbon.width/2, height - oxygen.height - 100);
  image(siliconb, width/3 - carbon.width/2, height - oxygen.height - 100);
  image(calciumb, width/5 - carbon.width/2, height/2 - oxygen.height);
  image(ironb, width*4/5 - carbon.height/2, height/2 - oxygen.height);
}

void create() {
  if (((mouseX > width/2 - carbon.width/2 - 7)&&(mouseX < width/2 - carbon.width/2 + 107)) && ((mouseY > 93)&&(mouseY < 200)) && mousePressed) {
    image(oxygen, width/2 - carbon.width/2 + 300, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 + 300, height/2 + carbon.height/2 + 75, 30, 30);
    oc = oc + 1;
    fill(0, 0, 0);
    textSize(25);
    text(oc, width/2 - carbon.width/2 + 300, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width*2/3 - carbon.width/2 - 7)&&(mouseX < width*2/3 - carbon.width/2 + 100)) && ((mouseY > height - carbon.height - 107)&&(mouseY < height - carbon.height)) && mousePressed) {
    image(carbon, width/2 - carbon.width/2 + 150, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 + 150, height/2 + carbon.height/2 + 75, 30, 30);
    cc = cc + 1;
    fill(0, 0, 0);
    textSize(25);
    text(cc, width/2 - carbon.width/2 + 150, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width/3 - carbon.width/2 - 7)&&(mouseX < width/3 - carbon.width/2 + 100)) && ((mouseY > height - carbon.height - 107)&&(mouseY < height - carbon.height)) && mousePressed) {
    image(silicon, width/2 - carbon.width/2, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2, height/2 + carbon.height/2 + 75, 30, 30);
    sic = sic + 1;
    fill(0, 0, 0);
    textSize(25);
    text(sic, width/2 - carbon.width/2, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width*4/5 - carbon.width/2 - 7)&&(mouseX < width*4/5 - carbon.width/2 + 100)) && ((mouseY > height/2 - carbon.height - 7)&&(mouseY < height/2 + 7)) && mousePressed) {
    image(iron, width/2 - carbon.width/2 - 150, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 - 150, height/2 + carbon.height/2 + 75, 30, 30);
    fec = fec + 1;
    fill(0, 0, 0);
    textSize(25);
    text(fec, width/2 - carbon.width/2 - 150, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width/5 - carbon.width/2 - 7)&&(mouseX < width/5 - carbon.width/2 + 100)) && ((mouseY > height/2 - carbon.height - 7)&&(mouseY < height/2 + 7)) && mousePressed) {
    image(calcium, width/2 - carbon.width/2 - 300, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 - 300, height/2 + carbon.height/2 + 75, 30, 30);
    cac = cac + 1;
    fill(0, 0, 0);
    textSize(25);
    text(cac, width/2 - carbon.width/2 - 300, height/2 + carbon.height/2 + 100);
    delay(200);
  }

  if (oc == 1) {
    image(oxygen, width/2 - carbon.width/2 + 300, height/2 - carbon.height/2);
  }
  if (cc == 1) {
    image(carbon, width/2 - carbon.width/2 + 150, height/2 - carbon.height/2);
  }
  if (sic == 1) {
    image(silicon, width/2 - carbon.width/2, height/2 - carbon.height/2);
  }
  if (fec == 1) {
    image(iron, width/2 - carbon.width/2 - 150, height/2 - carbon.height/2);
  }
  if (cac == 1) {
    image(calcium, width/2 - carbon.width/2 - 300, height/2 - carbon.height/2);
  }
}

void molecule() {
  if ((oc == 2)&&(cc == 1)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(co2 == 0)&&(trial == 1)) {
    co2 = 1;
    trial = 0;

    oc = 0;
    cc = 0;
    background(255, 255, 255);
  }
  if ((oc == 1)&&(cc == 1)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(co1 == 0)&&(trial == 1)) {
    co1 = 1;
    trial = 0;

    oc = 0;
    cc = 0;
    background(255, 255, 255);
  }
  if ((oc == 0)&&(cc == 1)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(c == 0)&&(trial == 1)) {
    c = 1;
    trial = 0;

    cc = 0;
    background(255, 255, 255);
  }
  if ((oc == 3)&&(cc == 0)&&(cac == 0)&&(sic == 0)&&(fec == 2)&&(fe2o3 == 0)&&(trial == 1)) {
    fe2o3 = 1;
    trial = 0;

    oc = 0;
    fec = 0;
    background(255, 255, 255);
  }
  if ((oc == 2)&&(cc == 0)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(oo == 0)&&(trial == 1)) {
    oo = 1;
    trial = 0;

    oc = 0;
    background(255, 255, 255);
  }
  if ((oc == 3)&&(cc == 0)&&(cac == 1)&&(sic == 1)&&(fec == 0)&&(casio3 == 0)&&(trial == 1)) {
    casio3 = 1;
    trial = 0;

    oc = 0;
    cac = 0;
    sic = 0;
    background(255, 255, 255);
  }
  if ((oc == 3)&&(cc == 1)&&(cac == 1)&&(sic == 0)&&(fec == 0)&&(caco == 0)&&(trial == 1)) {
    caco = 1;
    trial = 0;

    oc = 0;
    cac = 0;
    cc = 0;
    background(255, 255, 255);
  }  
  if ((oc == 1)&&(cc == 0)&&(cac == 1)&&(sic == 0)&&(fec == 0)&&(cao == 0)&&(trial == 1)) {
    cao = 1;
    trial = 0;

    oc = 0;
    cac = 0;
    background(255, 255, 255);
  }
  if ((oc == 0)&&(cc == 0)&&(cac == 0)&&(sic == 0)&&(fec == 01)&&(fe == 0)&&(trial == 1)) {
    fe = 1;
    trial = 0;

    fec = 0;
    background(255, 255, 255);
  }
  
  if (trial == 2){
    delay(1000);
    background(255, 255, 255);
    trial = 0;
  }
  if (trial == 1){
    image(wrong, width/2 - wrong.width/2, height/2 - wrong.height/2);
    trial = 2;
        
    oc = 0;
    cc = 0;
    cac = 0;
    fec = 0;
    sic = 0;
  }
}

void form() {
  if (casio3 == 1) {
    image(casio, 0, 100);
  }
  if (fe2o3 == 1) {
    image(feo, 900, 150);
  }
  if (co2 == 1) {
    image(coo, 1000, 500);
  }
  if (co1 == 1) {
    image(co, 1000, 700);
  }
  if (c == 1) {
    image(carbon, 150, 100);
  }
  if (oo == 1) {
    image(o2, 25, 700);
  }
  if (cao == 1) {
    image(caoI, 1100, 100);
  }
  if (caco == 1) {
    image(caco3, 50, 550);
  }
  if (fe == 1) {
    image(iron, 250, 100);
  }
}

void finish() {
  if ((c == 1)&&(co1 == 1)&&(co2 == 1)&&(oo == 1)&&(casio3 == 1)&&(fe2o3 == 1)&&(cao == 1)&&(caco == 1)&&(fe == 1)) {
    fill(0, 0, 255);
    rect(width/2 - 117.5, height/2 - 50, 235, 100);
    fill(0, 0, 0);
    textSize(100);
    text("Next", width/2 - 117.5, height/2 + 40);
    if (((mouseX > width/2 - 100)&&(mouseX < width/2 + 100))&&((mouseY > height/2 - 50)&&(mouseY < height/2 + 50))&&(mousePressed)) {
      background(255, 255, 255);
      stage++;
    }
  }
}

void start2() {
  fill(255, 0, 0);
  rect(0, 0, 1350, 50);
  fill(0, 0, 0);
  textSize(25);
  text("Now with the molecules formed, you need to create the chemical equations for the blast furnace.", 5, 30);
  
  textSize(50);
  text("C  CO  CO  O  CaSiO  CaO  CaCO  Fe O  Fe", 100, 125);
  textSize(30);
  text("2", 340, 140);
  text("2", 410, 140);
  text("3", 590, 140);
  text("3", 890, 140);
  text("2", 975, 140);
  text("3", 1030, 140);
}

void put(){
  if ((mouseX > 100)&&(mouseX < 135)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(carbon, 10, 300);
    delay(200);
  }
  if ((mouseX > 168)&&(mouseX < 238)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(co, 10, 200);
    delay(200);
  }
  if ((mouseX > 270)&&(mouseX < 380)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(coo, 10, 300);
    delay(200);
  }
  if ((mouseX > 375)&&(mouseX < 425)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(o2, 10 + carbon.width, 200);
    delay(200);
  }
  if ((mouseX > 445)&&(mouseX < 610)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(casio, 1000, 150);
    delay(200);
  }
  if ((mouseX > 620)&&(mouseX < 720)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(caoI, 100, 700);
    delay(200);
  }
  if ((mouseX > 750)&&(mouseX < 905)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(caco3, 100, 200);
    delay(200);
  }
  if ((mouseX > 925)&&(mouseX < 1050)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(feo, 1000, 500);
    delay(200);
  }
  if ((mouseX > 1065)&&(mouseX < 1115)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    image(iron, 500,500);
    delay(200);
  }
}

void start3(){
  fill(255, 0, 0);
  rect(0, 0, 1350, 50);
  fill(0, 0, 0);
  textSize(25);
  text("Now as you have the chemicals and reactions, place them in the correct place.", 5, 30);  
}

void last(){
  background(255, 255, 255);
  image(finall, 0, 0);
  fill(255,255,102);
  textSize(75);
  text("Your blast furnace works!", 200, 100);
  text("Congratulations!", width/2 - 300, 175);
}

void draw() {
  if (stage == 0) {
    begin();
  }
  if (stage == 1) {
    pile();
    create();
    molecule();
    form();
    finish();
  }
  if (stage == 2) {
    start2();
    put();
  }
  if (stage == 3){
    start3();
  }
  if (stage == 4){
    last();
  }
}

void keyPressed() {
  if (key == 'e') {
    trial = 1;
  }
  if (key == 'r') {
    oc = 0;
    cc = 0;
    cac = 0;
    fec = 0;
    sic = 0;
    background(255, 255, 255);
  }
  if (key == 'm'){
    background(255, 255, 255);
    stage++;
  }
  if (key == 'n'){
    background(255, 255, 255);
    stage--;
  }
}