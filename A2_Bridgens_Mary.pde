String pf="P O E M F I E L D";
String p="POEM";
String f="FIELD";
String n="NO.2";
int maroon = #B71132;
int i=0;
int y=0;
int lineSpacing=20;

void setup(){
size(800,550);
background(maroon);
 //PFont OCRAStd = loadFont("OCRAStd-60.vlw");
 //fill(222,47,60);
 //textFont(OCRAStd);
 // textAlign(CENTER,TOP);
 // text(pf,0,100, width,height);
 // textAlign(CENTER);
 // text(pf,0,250,width, height);
 // textAlign(CENTER,TOP);
 // text(pf,0,400,width,height); 
}
void draw(){
 PFont OCRAStd = loadFont("OCRAStd-60.vlw");
 PFont OCRAStd100 = loadFont("OCRAStd-100.vlw");
 fill(222,47,60);
 textFont(OCRAStd);
textAlign(CENTER,TOP);
text(pf,0,100, width,height);
textAlign(CENTER);
text(pf,0,250,width, height);
textAlign(CENTER,TOP);
text(pf,0,400,width,height);

//textFont(OCRAStd100);
//text(p,0,10,325,600);
//text(f,200,250,400,600);
//text(n,500,450,325,600);

noStroke();
i = i + 15; //declared a variable that becomes a counter, adding ten frames
  
if (i>50){ //when the counter gets over 50 then this becomes true
stroke(227,34,60); //now all the bars will be this maroon/red color
}
  
if (i>100){ //when the counter gets over 100 then this becomes positive
stroke(245,37,186);  //every bar will be pink/purple color
i=0;  //resets the counter to start the flashing loop over
}
 strokeWeight(10);
for (int x = 0; x<=width;x+=lineSpacing){
line(x,y,x,y+height);
fill(147,1,21); 
textFont(OCRAStd100);//I've placed this text down here, instead of with the rest of my text, to make sure it stays in front of the flashing bars
text(p,100,50,325,600);
text(f,200,250,400,600);
text(n,450,450,325,600);

}
}