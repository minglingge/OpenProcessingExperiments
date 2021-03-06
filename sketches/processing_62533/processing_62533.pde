
/*
 * Peasycam style scene controls
 */

void mouseDragged(){
  rotX += map(mouseY-pmouseY,0,height,0,TWO_PI);
  rotY += map(mouseX-pmouseX,0,width,0,TWO_PI);
}

void keyPressed() {
  switch(keyCode){
    case UP:
      zoom *= 1.02;
      break;
    case DOWN:
      zoom /= 1.02;
      break;
    case ' ':
      psychedelic = !psychedelic;
      break;
  }
  if(key == 's'){
    save("pic.tiff");
  } 
}


