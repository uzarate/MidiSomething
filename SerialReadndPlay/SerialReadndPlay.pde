
import processing.serial.*;

import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;
AudioPlayer player4;


Serial myPort;  // Create object from Serial class
// Data received from the serial port


void setup() 
{
  minim = new Minim(this);

  size(200, 200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[2]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);


  player = minim.loadFile("Boom.mp3");
  player2 = minim.loadFile("Brum.mp3");

  player3 = minim.loadFile("Tsss.mp3");

  player4 = minim.loadFile("Bap.mp3");
}

void draw()
{
  if ( myPort.available() > 0) {  // If data is available,
    String val = myPort.readStringUntil('\n');         // read it and store it in val
    println(val); //print it out in the console
    if (val == null) {
      return;
    }

    //if (println(val){
    //  player.play();
    //} else {
    //  player.stop();
    //}


    if ("Bap".equals(val.trim())) {

      player.play(0);
      player2.pause();
      player3.pause();
      player4.pause();
    } else if ("Tsss".equals(val.trim())) {
      player.pause();

      player2.play(0);

      player3.pause();
      player4.pause();
    } else if ("Brum".equals(val.trim())) {
      player.pause();
      player2.pause();

      player3.play(0);

      player4.pause();
    } else if ("Boom".equals(val.trim())) {
      player.pause();
      player2.pause();
      player3.pause();
      player4.play(0);
    }
  }

  //_____________
  //_____________
  //_____________


  //if ("Bap".equals(val.trim())) {
  //  player4.play();
  //  background(0);
  //} 
  //else {
  //  player.pause();
  //}

  //if ("Tsss".equals(val.trim())) {
  //  player3.play();
  //  background(0);
  //} 
  //else {
  //  player.pause();
  //}

  //if ("Brum".equals(val.trim())) {
  //  player2.play();
  //  background(0);
  //} 
  //else {
  //  player.pause();
  //}

  //if ("Boom".equals(val.trim())) {
  //  player.play();
  //  background(0);
  //} 
  //else {
  //  player.pause();
  //}

  //_____________
  //_____________
  //_____________
  //_____________



  //if ( player.isPlaying() )
  //{
  //  text("Press any key to pause playback.", 10, 20 );
  //} else
  //{
  //  text("Press any key to start playback.", 10, 20 );
  //}
}
//
//______________________________


//void keyPressed()
//{
//  if ( player.isPlaying() )
//  {
//    player.pause();
//  }
//  // if the player is at the end of the file,
//  // we have to rewind it before telling it to play again
//  else if ( player.position() == player.length() )
//  {
//    player.rewind();
//    player.play();
//  } else
//  {
//    player.play();
//  }
//}