int[] rCounts = new int[256];  //bins for red histogram
int[] gCounts = new int[256];  //bins for green histogram
int[] bCounts = new int[256];  //bins for blue histogram
String fname = "";//Global String variable for file
PImage img, stretchedImage, equImage;


void setup(){
  size(800, 800);
}

void draw(){
  
}

void calcHists(PImage img){
  for(int i = 0; i < rCounts.length; i ++){
    rCounts[i] = 0; 
    gCounts[i] = 0;
    bCounts[i] = 0;
  }
  
  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      color c = img.get(x,y);
      int r = int(red(c));
      int g = int(green(c));
      int b = int(blue(c));
      rCounts[r] += 1;
      gCounts[g] += 1;
      bCounts[b] += 1;
    }
  }
}

void keyReleased(){
  if(key == '1'){
    //Display original image    
  }
  else if(key == '2'){
    //Display stretched image, histogram stretch from class.
  }
  else if(key == '3'){
    //Display equalized image, histogram equalization.
  }
  else if(key == 'h'){
    //Display original histogram.
  }
  else if(key == 's'){
    //Dislay stretched histogram.
  }
  else if(key == 'e'){
    //Display equalized histogram.
  }
  else if(key == 'r'){
    //Display histogram on regionally modified image.
  }
  else if(key == 'c'){
    //Display cumulative histogram for debugging
  }
  
}

//Suggest doing makeTestImage method, Ex02_histograms