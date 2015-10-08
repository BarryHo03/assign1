PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int x,y,z,w,h,t;

void setup () {
  size(640,480) ;  
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  x=floor(random(0,196));
  z=floor(random(0,500));
  w=floor(random(20,470));
  h=640;
  t=0;
}

void draw() {
  background(250);
  //bg
  image(bg1,h-640,0);
  h++;
  h%=1280;
  
  image(bg2,t-640,0);
  t++;
  t%=1280;
  
  //fighter
  image(fighter,550,300);
   
  //hp 
  noStroke();
  fill(255,0,0);
  rect(10,0,x,20);
  image(hp,0,0);
  
  //enemy  
  image(enemy,y,200);
  y+=2;
  y%=640;
  
  //treasure
  image(treasure,z,w); 
}
