// Denna fil fungerar som Model

Movie[] videos = new Movie[5];
boolean isPlaying = true;
boolean debug = true;

int buttonY1 = 125;
int buttonY2 = 225;
int buttonY3 = 325;
int buttonY4 = 425;
int buttonX = 700;

int programState = 0;
int videoState = 0;
int r, g, b;

void init(){
  r = 0;
  g = 0;
  b = 0;
    
  videos[0] = new Movie( this, "video_1.mov" );
  videos[1] = new Movie( this, "video_2.mov" );
  videos[2] = new Movie( this, "video_3.mov" );
  videos[3] = new Movie( this, "video_4.mov" );
  videos[4] = new Movie( this, "video_5.mov" );
}
