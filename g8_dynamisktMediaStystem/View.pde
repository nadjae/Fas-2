// Denna fil fungerar som View

void showVideo(){
  image( videos[videoState], 100, 100, width/2, height/2 );  
}

void introUI(){
  textAlign(CENTER);
  textSize(100);
  text("Välkommen", width/2, height/2);
}

void drawUI(){
  
  // Rita ut "knappar"
  strokeWeight( 2 );
  stroke( r, g, b );
  fill( r, g, b, 127 );
  
  ellipseMode(CENTER);
  ellipse( buttonX, buttonY1, 50, 50 );
  ellipse( buttonX, buttonY2, 50, 50 );
  ellipse( buttonX, buttonY3, 50, 50 );
  ellipse( buttonX, buttonY4, 50, 50 );
  println(buttonX,buttonX,buttonX,buttonX,buttonY1);
  println(mouseX,mouseY);
  
  // Rita ut text på aktiva knappar
  textSize( 16 );
  textAlign( CENTER );
  //text( videos[v].filename, width/2, 32 );
  text( "Gör ditt val!", width/2, 32 );
  
  //Knappmarkörer
  strokeWeight( 1 );
  textSize( 20 );
  textAlign( CENTER );


    text( "A", buttonX, buttonY1 + 8 );

    text( "B", buttonX, buttonY2 + 8 );

    text( "C", buttonX, buttonY3 + 8 );

    text( "D", buttonX, buttonY4 + 8 );

}

void exit(){
   text("Tack", width/2,height/2); 
}
