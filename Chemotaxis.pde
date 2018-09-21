 Bacteria [] colony;//declare bacteria variables here   
 void setup()   
 {     
 	size(500, 500);
   colony = new Bacteria[15];
   for (int i = 0; i<colony.length;i++){
     colony[i] = new Bacteria();
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {
   background(45, 62, 89);
   for (int i = 0; i < colony.length; i++){
     colony[i].show();
     colony[i].move();
   }
 	//move and show the bacteria   
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
     if (bX < mouseX){
       bX = bX + ((int)(Math.random()*7)-5);
       
     bX = bX + ((int)(Math.random()*5)-2);
     bY = bY + ((int)(Math.random()*5)-2);
   }
   void show(){
     noStroke();
     fill(256-col, 196, col);
     ellipse(bX, bY, sz, sz);
   }
 	//lots of java!   
 }    
