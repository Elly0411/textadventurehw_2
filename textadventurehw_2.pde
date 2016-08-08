int state=0;
PFont f;
PImage welcome;
PImage coffeeShop;

void setup(){
  size(1000,800);
  f= createFont("Helvetica", 14, true);
  welcome= loadImage ("welcome.png");
  coffeeShop=loadImage("coffeeShop.jpg");
}

void draw(){  
  if (state ==0){
    background(255);
    textAlign(CENTER);
    textFont(f,16);
    fill(0);
    text("You are thirsty now. You will...",width/2, height/2-20);
    text("(A)walk to a coffee shop.",width/2, height/2);
    text("(B)walk to a juice bar.",width/2, height/2+20);
    imageMode(CORNER);
    image(welcome, width/2, height/2);
    state=1;
  }
  
  if (state ==2){
  background(255);
  text("(A)order a Latte.",width/2, height/2-20);
  text("(B)order a Black Coffee.",width/2, height/2);
  
  state= 50;
   }
   
   if(state ==3){
     background(255);
     text("Juice is good for health, drink more!",width/2, height/2-20);
     text("Do you want to...",width/2, height/2);
     text("(A)order an apple juice?",width/2, height/2+20 );
     text("(B)order a lemonade?",width/2, height/2+40 );
     state=60;
   }
   
   if(state ==4){
     background(255);
     text("Sorry, we are out of milk.",width/2, height/2-20);
     text("Can you make another order?",width/2, height/2);
     state =9;
   }
   
   if (state ==5){
   background(255);
   text("Black coffee have discounts now.",width/2, height/2-20);
   text("Buy one and get one free!",width/2, height/2);
   state =11;
   }   
   
   if (state ==6){
   background(255);
   text("Do you want to add some milk, for an apple milk juice?",width/2, height/2);
   state=13;
 }
   
   if(state ==7){
   background(255);
   text("Do you want to add suguar?",width/2, height/2);
   state=15;
 }
}

void keyPressed(){
 if(state ==1){
   if(key =='a'){
     state= 2;
   }else if (key == 'b'){
      state= 3;
 }
}

 if(state ==4){
   if(key =='a'){
     state= 8;
   }else if (key == 'b'){
      state= 9;
 }
}

 if(state ==50){
   if(key =='a'){
     state= 4;
   }else if (key == 'b'){
      state= 5;
 }
}

 if(state ==60){
   if(key =='a'){
     state= 6;
   }else if (key == 'b'){
      state= 7;
 }
}

}