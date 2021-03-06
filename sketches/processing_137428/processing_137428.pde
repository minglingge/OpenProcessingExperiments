
/*
***Please, I think the code will run only if you save the image I attached in the assignment field in your computer and:
in Processing, click in "Sketch", "Add file...", select the image "dhirstspotpainting.png" keeping the name, and then run***
Title: DIY:Damien Hirst's Spot Paintings
Description: Once I read in a Brazilian art magazine, Select, an article about Damien Hirst and the art market. One thing that catchs my attention was a curator declaration on the difficult to
know which Spot Painting work is original and which is fake, since the artist make a lot of works like this using large industrial processess. That declaration inspires me to create a 'do
it yourself' play containing the colors that the artist uses in these works and one of the shapes he created.
*/

//Global variables
//320 colors
color[] pixel = {#FADB92, #E3E3E1, #BEE2AB, #B0E0D4, #D9DE9B, #F5DE6D, #F5DE6D, #E68459, #336683, #F9CE5E, #C54226, #98A2C5, #E8A35E, #A7C07F, #A8947B, #61839C, #E79371, #5392A4, #7FAE78, #AA9C82, #EFD053, #6A575B, #463551, #635861, #C33B3B, #1D4C5E, #567089, #884147, #637955, #A62027, #6D5A49, #9D563A, #F4AB66, #DFEACC, #B5E6C8, #B6A881, #D4C5CA, #D3D3D1, #E9C4B4, #D3634D, #93BF9C, #FCAF25, #417988, #A8AA9F, #B5A760, #2B679D, #A8A9A1, #96CF80, #A27E68, #CF868D, #E69079, #A58B7C, #87C387, #69BABD, #C48F7F, #96375F, #F4AB66, #B43749, #1E435D, #A46C93, #B47156, #C6545C, #55473E, #5C583D, #DECDBD, #FCBE81, #A7DBAA, #F6E6A8, #C75579, #9A95AB, #51B3C0, #D8A06D, #E05D49, #9B9EA5, #E9B957, #E8D056, #D96E82, #55AEB4, #4CB3AF, #9D9183, #8F8F8D, #A49689, #686866, #817291, #96754A, #8D8A6B, #2297B8, #E08161, #879D6F, #BE454C, #1B70A6, #926C63, #6C5F7B, #8D6280, #5C5A31, #B1434C, #706D5E, #A2C08E, #F9DF54, #565529, #FAC17E, #989898, #7C5F7E, #B1C3CF, #B2887A, #D1D1C9, #3588B4, #93C6B3, #EC955F, #1F6976, #DDD9A9, #A7AC8E, #56A142, #D3A291, #854E78, #AA6754, #3276A5, #DFBAAA, #4B4137, #D6C172, #4C8EA4, #AE8684, #C89E6E, #A9989E, #C89E6E, #A9989E, #5E83A0, #A88B2F, #969674, #DE8076, #26674F, #D77A41, #B9C283, #F09371, #E15B36, #83A584, #689EB6, #76B8CE, #ED9043, #D0859C, #5F4433, #789A75, #C4A066, #C4A066, #CB6034, #DEE4E0, #4976A0, #91CB8E, #BB2129, #97423B, #8B6C7B, #4B8CB2, #974E2B, #ABD1C2, #9CCC54, #77AE87, #C6837D, #737D86, #69775D, #B8A584, #AEC484, #155187, #5F5148, #CEAD77, #F9B15C, #7E8688, #97B2C3, #EC936B, #4A6346, #B1C2BC, #91698B, #EFE4B7, #E9A368, #7DD3A6, #D8D6A5, #FBD3A0, #81A5D5, #B47F6F, #D65C59, #91ADB1, #E79B4D, #533746, #A67787, #A94142, #876973, #B9E7B6, #BDAC5A, #6A869C, #83CEB9, #C78469, #D6A155, #74BCA6, #C43A49, #FDC85E, #674E61, #8C866E, #FFD275, #A4AB75, #9DDBDA, #428DB4, #88918C, #9DCCC2, #D0737B, #D7B875, #4494C5, #629E82, #796370, #A82E45, #6C614F, #FFDB80, #EBAB92, #D5865D, #518545, #B8BDD3, #CAAFB4, #A7A7A7, #E5844F, #88B9C8, #BEAA89, #67494B, #92535E, #C3907B, #C0CAD3, #6E5F62, #508746, #B2C37D, #96B0C7, #EFB18C, #B4B895, #518F3A, #A5A3A8, #543D59, #BABAB2, #77889A, #DAC4C7, #E9DDAB, #83B377, #6C2C3A, #846C84, #7DB399, #BC9A6C, #F7D99B, #AA2538, #BA1F25, #336856, #3FA5A9, #B2A465, #DBE79B, #A6826A, #F1BAB5, #635242, #F5F1D6, #BCAE7F, #85D387, #619086, #C79675, #F5BE6B, #619D84, #A488AE, #DC89A5, #C8D5CE, #C8E1CB, #3B4E2E, #685A73, #FFBE7F, #EC9C77, #B48A60, #93313E, #439F6C, #C7DDEB, #2E507D, #B9BDC0, #E0A959, #9E838A, #473C3A, #7FBB9F, #C15C50, #E89C85, #949DAE, #2E507D, #B9BDC0, #E0A959, #9E838A, #473C3A, #7FBB9F, #C15C50, #E89C85, #949DAE, #85C6B0, #8E5B40, #BFAF8B, #B1B3B2, #256FA0, #6D6272, #B0AB74, #9DC7AF, #A6C4A0, #C0D7DF, #808C8A, #C63836, #F9F0A3, #B3CDA8, #5C85B9, #DE7464, #5F6D15, #D6A652, #1A598C, #2F395C, #E4BF64, #DE7C4F, #3E6A8F, #A0B9D7, #5C9BAD, #C55A3A, #849E7B, #63434E, #D1BA9A, #F5F1C4, #98C371, #864559, #BDAC64, #5E605F};
//Image
PImage spotpaintings;
int a = 0;

//Setup
void setup(){
  size(1000,700);
  smooth();
  ellipseMode(CENTER);
  noStroke();
}

//Draw
//Inicial screen
void draw(){
  if(a==0){
  PFont text = loadFont("Leelawadee-48.vlw");
  spotpaintings = loadImage("dhirstspotpainting.png");
  background(spotpaintings);
  textFont(text);
  //Title
  fill(40);
  textSize(42);
  textAlign(CENTER);
  text("DIY:", width/2, height/10);
  fill(80);
  textSize(32);
  text("Damien Hirst's Spot Paintings", width/2, height/7+5);
  //Instructions
  textSize(22);
  fill(120);
  textAlign(LEFT);
  text("Instructions:", width/15-30,height/2+220);
  textSize(20);
  fill(140);
  text("1.In the next screen, the canvas, click and release on a black spot to change the color to a random one;", width/15-30, height/2+245);
  fill(150);
  text("2.Press 'delete' to redo the canvas;", width/15-30, height/2+270);
  fill(160);
  text("3.Press 's' to salve a screenshot of the canvas;", width/15-30, height/2+295);
  fill(170);
  text("4.Now press 'enter' to start painting. Have fun!", width/15-30, height/2+320);
  }
  
  //Keyboard Input
  if(keyPressed){
    //ENTER or '1'
    if(key == ENTER || key == DELETE){
  a=1;
  if(a==1){
  background(255);
  fill(0);
  ellipse(width/2,height/2,15,15);
  ellipse(width/2,height/2-40,15,15);
  ellipse(width/2,height/2-80,15,15);
  ellipse(width/2,height/2-120,15,15);
  ellipse(width/2,height/2-160,15,15);
  ellipse(width/2,height/2+40,15,15);
  ellipse(width/2,height/2+80,15,15);
  ellipse(width/2,height/2+120,15,15);
  ellipse(width/2,height/2+160,15,15);
  ellipse(width/2+40,height/2,15,15);
  ellipse(width/2+80,height/2,15,15);
  ellipse(width/2+120,height/2,15,15);
  ellipse(width/2+160,height/2,15,15);
  ellipse(width/2-40,height/2,15,15);
  ellipse(width/2-80,height/2,15,15);
  ellipse(width/2-120,height/2,15,15);
  ellipse(width/2-160,height/2,15,15);
  ellipse(width/2+20,height/2+20,15,15);
  ellipse(width/2+60,height/2+20,15,15);
  ellipse(width/2+100,height/2+20,15,15);
  ellipse(width/2+140,height/2+20,15,15);
  ellipse(width/2-20,height/2+20,15,15);
  ellipse(width/2-60,height/2+20,15,15);
  ellipse(width/2-100,height/2+20,15,15);
  ellipse(width/2-140,height/2+20,15,15);
  ellipse(width/2+40,height/2+40,15,15);
  ellipse(width/2+80,height/2+40,15,15);
  ellipse(width/2+120,height/2+40,15,15);
  ellipse(width/2-40,height/2+40,15,15);
  ellipse(width/2-80,height/2+40,15,15);
  ellipse(width/2-120,height/2+40,15,15);
  ellipse(width/2+20,height/2+60,15,15);
  ellipse(width/2+60,height/2+60,15,15);
  ellipse(width/2+100,height/2+60,15,15);
  ellipse(width/2-20,height/2+60,15,15);
  ellipse(width/2-60,height/2+60,15,15);
  ellipse(width/2-100,height/2+60,15,15);
  ellipse(width/2+40,height/2+80,15,15);
  ellipse(width/2+80,height/2+80,15,15);
  ellipse(width/2-40,height/2+80,15,15);
  ellipse(width/2-80,height/2+80,15,15);
  ellipse(width/2+20,height/2+100,15,15);
  ellipse(width/2+60,height/2+100,15,15);
  ellipse(width/2-20,height/2+100,15,15);
  ellipse(width/2-60,height/2+100,15,15);
  ellipse(width/2+40,height/2+120,15,15);
  ellipse(width/2-40,height/2+120,15,15);
  ellipse(width/2-20,height/2+140,15,15);
  ellipse(width/2+20,height/2+140,15,15);
  ellipse(width/2-20,height/2-20,15,15);
  ellipse(width/2-60,height/2-20,15,15);
  ellipse(width/2-100,height/2-20,15,15);
  ellipse(width/2-140,height/2-20,15,15);
  ellipse(width/2+20,height/2-20,15,15);
  ellipse(width/2+60,height/2-20,15,15);
  ellipse(width/2+100,height/2-20,15,15);
  ellipse(width/2+140,height/2-20,15,15);
  ellipse(width/2-40,height/2-40,15,15);
  ellipse(width/2-80,height/2-40,15,15);
  ellipse(width/2-120,height/2-40,15,15);
  ellipse(width/2+40,height/2-40,15,15);
  ellipse(width/2+80,height/2-40,15,15);
  ellipse(width/2+120,height/2-40,15,15);
  ellipse(width/2-20,height/2-60,15,15);
  ellipse(width/2-60,height/2-60,15,15);
  ellipse(width/2-100,height/2-60,15,15);
  ellipse(width/2+20,height/2-60,15,15);
  ellipse(width/2+60,height/2-60,15,15);
  ellipse(width/2+100,height/2-60,15,15);
  ellipse(width/2-40,height/2-80,15,15);
  ellipse(width/2-80,height/2-80,15,15);
  ellipse(width/2+40,height/2-80,15,15);
  ellipse(width/2+80,height/2-80,15,15);
  ellipse(width/2-20,height/2-100,15,15);
  ellipse(width/2-60,height/2-100,15,15);
  ellipse(width/2+20,height/2-100,15,15);
  ellipse(width/2+60,height/2-100,15,15);
  ellipse(width/2-40,height/2-120,15,15);
  ellipse(width/2+40,height/2-120,15,15);
  ellipse(width/2+20,height/2-140,15,15);
  ellipse(width/2-20,height/2-140,15,15);
  a=2;
    }
    }
    //Save
    if(key == 's' || key == 'S') saveFrame("spotpanting.png");
}
}

//Mouse Input
void mouseReleased(){
  if(a==2){
  float c = random(320);
  fill(pixel[int(c)]);
  //1
  if(mouseX>490){
    if(mouseX<505){
      if(mouseY>340){
        if(mouseY<355){
          ellipse(width/2,height/2,16,16);
        }
      }
      //2
      if(mouseY>300){
       if(mouseY<315){
        ellipse(width/2,height/2-40,16,16);
       }
      }
      //3
      if(mouseY>260){
       if(mouseY<275){
        ellipse(width/2,height/2-80,16,16);
       } 
      }
      //4
      if(mouseY>220){
        if(mouseY<235){
          ellipse(width/2,height/2-120,16,16);
        }
      }
      //5
      if(mouseY>180){
       if(mouseY<195){
        ellipse(width/2,height/2-160,16,16);
       } 
      }
      //6
      if(mouseY>380){
       if(mouseY<395){
        ellipse(width/2,height/2+40,16,16);
       } 
      }
      //7
      if(mouseY>420){
       if(mouseY<435){
        ellipse(width/2,height/2+80,16,16);
       } 
      }
      //8
      if(mouseY>460){
       if(mouseY<475){
        ellipse(width/2,height/2+120,16,16);
       } 
      }
      //9
      if(mouseY>500){
       if(mouseY<515){
        ellipse(width/2,height/2+160,16,16);
       } 
      }
    }
  }
  //10
  if(mouseX>510){
   if(mouseX<525){
    if(mouseY>320){
     if(mouseY<335){
      ellipse(width/2+20,height/2-20,16,16);
     } 
    }
    if(mouseY>280){
     if(mouseY<295){
       ellipse(width/2+20,height/2-60,16,16);
    }
   } 
   if(mouseY>240){
     if(mouseY<255){
       ellipse(width/2+20,height/2-100,16,16);
     }
   }
   if(mouseY>200){
    if(mouseY<215){
     ellipse(width/2+20,height/2-140,16,16);
    } 
   }
   if(mouseY>360){
    if(mouseY<375){
     ellipse(width/2+20,height/2+20,16,16);
    } 
   }
   if(mouseY>400){
    if(mouseY<415){
     ellipse(width/2+20,height/2+60,16,16);
    } 
   }
   if(mouseY>440){
    if(mouseY<455){
     ellipse(width/2+20,height/2+100,16,16);
    } 
   }
   if(mouseY>480){
    if(mouseY<495){
     ellipse(width/2+20,height/2+140,16,16);
    } 
   }
   }
  }
  if(mouseX>530){
   if(mouseX<545){
    if(mouseY>220){
     if(mouseY<235){
       ellipse(width/2+40,height/2-120,16,16);
    }
   }
   if(mouseY>260){
    if(mouseY<275){
     ellipse(width/2+40,height/2-80,16,16);
    } 
   }
   if(mouseY>300){
    if(mouseY<315){
     ellipse(width/2+40,height/2-40,16,16);
    } 
   }
   if(mouseY>340){
    if(mouseY<355){
     ellipse(width/2+40,height/2,16,16);
    } 
   }
   if(mouseY>380){
    if(mouseY<395){
     ellipse(width/2+40,height/2+40,16,16);
    } 
   }
   if(mouseY>420){
    if(mouseY<435){
     ellipse(width/2+40,height/2+80,16,16);
    } 
   }
   if(mouseY>460){
    if(mouseY<475){
     ellipse(width/2+40,height/2+120,16,16);
    } 
   }
   } 
  }
  if(mouseX>550){
   if(mouseX<565){
    if(mouseY>240){
     if(mouseY<255){
      ellipse(width/2+60,height/2-100,16,16);
     } 
    }
    if(mouseY>280){
     if(mouseY<295){
      ellipse(width/2+60,height/2-60,16,16);
     } 
    }
    if(mouseY>320){
     if(mouseY<335){
      ellipse(width/2+60,height/2-20,16,16); 
    }
   }
  if(mouseY>360){
   if(mouseY<375){
    ellipse(width/2+60,height/2+20,16,16); 
   }
  }
 if(mouseY>400){
  if(mouseY<415){
   ellipse(width/2+60,height/2+60,16,16);
  }
 }
 if(mouseY>440){
  if(mouseY<455){
   ellipse(width/2+60,height/2+100,16,16);
  } 
 }
   }
  }
  if(mouseX>570){
   if(mouseX<585){
    if(mouseY>260){
     if(mouseY<275){
      ellipse(width/2+80,height/2-80,16,16);
     } 
    }
    if(mouseY>300){
     if(mouseY<315){
      ellipse(width/2+80,height/2-40,16,16);
     } 
    }
    if(mouseY>340){
     if(mouseY<355){
      ellipse(width/2+80,height/2,16,16);
     } 
    }
    if(mouseY>380){
     if(mouseY<395){
      ellipse(width/2+80,height/2+40,16,16); 
    }
   }
  if(mouseY>420){
   if(mouseY<435){
    ellipse(width/2+80,height/2+80,16,16); 
   }
  } 
  }
  }
  if(mouseX>590){
   if(mouseX<605){
    if(mouseY>280){
     if(mouseY<295){
      ellipse(width/2+100,height/2-60,16,16);
     } 
    }
    if(mouseY>320){
     if(mouseY<335){
      ellipse(width/2+100,height/2-20,16,16);
     } 
    }
    if(mouseY>360){
     if(mouseY<375){
      ellipse(width/2+100,height/2+20,16,16);
     } 
    }
    if(mouseY>400){
     if(mouseY<415){
      ellipse(width/2+100,height/2+60,16,16);
     } 
    }
   } 
  }
  if(mouseX>610){
   if(mouseX<625){
    if(mouseY>300){
     if(mouseY<315){
       ellipse(width/2+120,height/2-40,16,16);
    }
   }
  if(mouseY>340){
   if(mouseY<355){
    ellipse(width/2+120,height/2,16,16); 
   }
  }
 if(mouseY>380){
  if(mouseY<395){
   ellipse(width/2+120,height/2+40,16,16); 
  }
 } 
  }
}
if(mouseX>630){
 if(mouseX<645){
  if(mouseY>320){
   if(mouseY<335){
    ellipse(width/2+140,height/2-20,16,16);
   } 
  }
  if(mouseY>360){
   if(mouseY<375){
    ellipse(width/2+140,height/2+20,16,16);
   } 
  }
     } 
    }
   if(mouseX>650){
   if(mouseX<675){
    if(mouseY>340){
     if(mouseY<355){
      ellipse(width/2+160,height/2,16,16);
   } 
  }
 } 
}
  if(mouseX>470){
   if(mouseX<485){
    if(mouseY>320){
     if(mouseY<335){
      ellipse(width/2-20,height/2-20,16,16);
     } 
    }
    if(mouseY>280){
     if(mouseY<295){
       ellipse(width/2-20,height/2-60,16,16);
    }
   } 
   if(mouseY>240){
     if(mouseY<255){
       ellipse(width/2-20,height/2-100,16,16);
     }
   }
   if(mouseY>200){
    if(mouseY<215){
     ellipse(width/2-20,height/2-140,16,16);
    } 
   }
   if(mouseY>360){
    if(mouseY<375){
     ellipse(width/2-20,height/2+20,16,16);
    } 
   }
   if(mouseY>400){
    if(mouseY<415){
     ellipse(width/2-20,height/2+60,16,16);
    } 
   }
   if(mouseY>440){
    if(mouseY<455){
     ellipse(width/2-20,height/2+100,16,16);
    } 
   }
   if(mouseY>480){
    if(mouseY<495){
     ellipse(width/2-20,height/2+140,16,16);
    } 
   }
   }
  }
  if(mouseX>450){
   if(mouseX<465){
    if(mouseY>220){
     if(mouseY<235){
       ellipse(width/2-40,height/2-120,16,16);
    }
   }
   if(mouseY>260){
    if(mouseY<275){
     ellipse(width/2-40,height/2-80,16,16);
    } 
   }
   if(mouseY>300){
    if(mouseY<315){
     ellipse(width/2-40,height/2-40,16,16);
    } 
   }
   if(mouseY>340){
    if(mouseY<355){
     ellipse(width/2-40,height/2,16,16);
    } 
   }
   if(mouseY>380){
    if(mouseY<395){
     ellipse(width/2-40,height/2+40,16,16);
    } 
   }
   if(mouseY>420){
    if(mouseY<435){
     ellipse(width/2-40,height/2+80,16,16);
    } 
   }
   if(mouseY>460){
    if(mouseY<475){
     ellipse(width/2-40,height/2+120,16,16);
    } 
   }
   } 
  }
  if(mouseX>430){
   if(mouseX<445){
    if(mouseY>240){
     if(mouseY<255){
      ellipse(width/2-60,height/2-100,16,16);
     } 
    }
    if(mouseY>280){
     if(mouseY<295){
      ellipse(width/2-60,height/2-60,16,16);
     } 
    }
    if(mouseY>320){
     if(mouseY<335){
      ellipse(width/2-60,height/2-20,16,16); 
    }
   }
  if(mouseY>360){
   if(mouseY<375){
    ellipse(width/2-60,height/2+20,16,16); 
   }
  }
 if(mouseY>400){
  if(mouseY<415){
   ellipse(width/2-60,height/2+60,16,16);
  }
 }
 if(mouseY>440){
  if(mouseY<455){
   ellipse(width/2-60,height/2+100,16,16);
  } 
 }
   }
  }
  if(mouseX>410){
   if(mouseX<425){
    if(mouseY>260){
     if(mouseY<275){
      ellipse(width/2-80,height/2-80,16,16);
     } 
    }
    if(mouseY>300){
     if(mouseY<315){
      ellipse(width/2-80,height/2-40,16,16);
     } 
    }
    if(mouseY>340){
     if(mouseY<355){
      ellipse(width/2-80,height/2,16,16);
     } 
    }
    if(mouseY>380){
     if(mouseY<395){
      ellipse(width/2-80,height/2+40,16,16); 
    }
   }
  if(mouseY>420){
   if(mouseY<435){
    ellipse(width/2-80,height/2+80,16,16); 
   }
  } 
  }
  }
  if(mouseX>390){
   if(mouseX<405){
    if(mouseY>280){
     if(mouseY<295){
      ellipse(width/2-100,height/2-60,16,16);
     } 
    }
    if(mouseY>320){
     if(mouseY<335){
      ellipse(width/2-100,height/2-20,16,16);
     } 
    }
    if(mouseY>360){
     if(mouseY<375){
      ellipse(width/2-100,height/2+20,16,16);
     } 
    }
    if(mouseY>400){
     if(mouseY<415){
      ellipse(width/2-100,height/2+60,16,16);
     } 
    }
   } 
  }
  if(mouseX>370){
   if(mouseX<385){
    if(mouseY>300){
     if(mouseY<315){
       ellipse(width/2-120,height/2-40,16,16);
    }
   }
  if(mouseY>340){
   if(mouseY<355){
    ellipse(width/2-120,height/2,16,16); 
   }
  }
 if(mouseY>380){
  if(mouseY<395){
   ellipse(width/2-120,height/2+40,16,16); 
  }
 } 
  }
}
if(mouseX>350){
 if(mouseX<365){
  if(mouseY>320){
   if(mouseY<335){
    ellipse(width/2-140,height/2-20,16,16);
   } 
  }
  if(mouseY>360){
   if(mouseY<375){
    ellipse(width/2-140,height/2+20,16,16);
   } 
  }
     } 
    }
   if(mouseX>330){
   if(mouseX<345){
    if(mouseY>340){
     if(mouseY<355){
      ellipse(width/2-160,height/2,16,16);
   } 
  }
 } 
}
  }
}





