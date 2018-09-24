 Bacteria [] colony;//declare bacteria variables here   
 boolean gameState;
 void setup()   
 {     
   gameState = true;
 	size(500, 500);
   colony = new Bacteria[40];
   for (int i = 0; i<colony.length;i++){
     colony[i] = new Bacteria();
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {
   if (gameState == false){
       background(177, 181, 206);
       fill(0);
       textSize(50);
       text("GAME OVER", 110, 200);
       textSize(30);
       text("click to start again", 120, 300);
       if (mousePressed==true){
       }
   }else if (gameState == true){
     background(14, 18, 48);
     for (int i = 0; i < colony.length; i++){
       colony[i].show();
       colony[i].move();
       colony[i].checkCollision();
     }
     fill(247, 247, 197, 20);
     ellipse(mouseX, mouseY, 100, 100);
     fill(247, 247, 197, 40);
     ellipse(mouseX, mouseY, 95, 95);
     fill(247, 247, 197, 60);
     ellipse(mouseX, mouseY, 85, 85);
     fill(247, 247, 197, 80);
     ellipse(mouseX, mouseY, 65, 65);
     fill(249, 249, 219);
     ellipse(mouseX, mouseY, 40, 40);
   }  
 }  
 void mousePressed(){
   gameState = true;
 }
 class Bacteria    
 {     
   int bX, bY, col,sz;
   
   Bacteria()//constructor
   {
     bX = 250;
     bY = 250;
     col = (int)(Math.random()*150);
     sz = (int) (Math.random()*10)+10;
   }
   void move(){
     if (mouseX> bX){
       bX = bX + ((int)(Math.random()*9)-3);
     } else if (mouseX <bX){
       bX = bX +((int)(Math.random()*9)-6);
     }
     if (mouseY > bY){
       bY = bY + ((int)(Math.random()*9)-3);
     }else if (mouseY < bY){
       bY = bY + ((int)(Math.random()*9)-6);
     }
   }
   void show(){
     noStroke();
     fill(166-col, 166-col, 166-col);
     ellipse(bX, bY, sz, sz);
   }
   void checkCollision(){
     if (((bX-mouseX< 1)&&(bX-mouseX>-1))||((bY-mouseY<1)&&(bY-mouseY>-1))){
       gameState = false;
     } else{
       gameState = true;
     }
   }
       
 	//lots of java!   
 }    
