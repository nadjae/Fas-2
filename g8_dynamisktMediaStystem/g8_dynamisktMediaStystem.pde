// 2018 Olle Karlsson
// VideoExample 08
// - att utifrån en tillståndsmatris styra nästa videos med knappar
// https://processing.org/reference/libraries/video/  
// Denna fil fungerar som Controller


import processing.video.*;

void setup() {
  size( 1100, 700 );
  init();
  
  videos[videoState].play(); 
}

// Anropas av operativsystemet när en ny videoframes är redo att visas
void movieEvent( Movie m ) {
  m.read();
}

void draw(){
  
  
  switch(programState){
  case 0:
    introUI();
    break;
  case 1:
    background(255);
    
    // Kontrollerar om videon visat filmens sista bildruta (och därigenom har stannat) 
    float md = videos[videoState].duration();
    float mt = videos[videoState].time();
    if ( mt >= md ) {
      isPlaying = false;
    }
    
    showVideo();
    drawUI(); 

    break;
  case 2:
    exit();
    break;
  }
}


// När användaren aktiverar muspekaren
void mousePressed() {
  
  if(programState == 0){
    programState=1;
  }
  else if(programState==1){
    // Kontroll om klicket är inanför cirkel A:s yta
    float d = dist( mouseX, mouseY, buttonX, buttonY1);
    if ( d < 25 ) {
          videoState = 0;
          videos[videoState].jump(0);
          videos[videoState].play();
          isPlaying = true;
     
      if ( debug ) println("A; v = " + videoState );
    }
  
    // Kontroll om klicket är inanför cirkel B:s yta
    d = dist( mouseX, mouseY, buttonX, buttonY2 );
    if (d < 25) {
      
        videoState = 1;
        videos[videoState].jump(0);
        videos[videoState].play();
        isPlaying = true;
      
      if ( debug ) println( "B; v = " + videoState );
    }
    
    // Kontroll om klicket är inanför cirkel C:s yta
    d = dist( mouseX, mouseY, buttonX, buttonY3 );
    if ( d < 25 ) {
        videoState = 2;
        videos[videoState].jump(0);
        videos[videoState].play();
        isPlaying = true;
      
      if ( debug ) println( "C; v = " + videoState );
    }
    
    // Kontroll om klicket är inanför cirkel D:s yta 
    d = dist( mouseX, mouseY, buttonX, buttonY4);
    if (d < 25) {
        videoState = 3;
        videos[videoState].jump(0);
        videos[videoState].play();
        isPlaying = true;

      if ( debug ) println( "D; v = " + videoState );
    }
  }
  
  else if( programState==3){
    return;
  }
}
