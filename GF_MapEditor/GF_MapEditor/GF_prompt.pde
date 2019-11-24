
enum FinishEvent{
  EXIT_ENTIRE_PROGRAM,
  CONTINUE_PROGRAM,//this simply closes the prompt
  NOTHING
}


class Prompt{
  
  String textToUser;
  int milliSecondsUntilClose;
  FinishEvent eventOnClose;
  
  //in x=r,y=g,z=b
  PVector backgroundColour = new PVector(200,200,200); 
  PVector highLightColour = new PVector(0,100,255);
  
  Integer startedDrawing;
  
  Prompt(String text,int seconds,FinishEvent eventAfter){
    textToUser = text;
    milliSecondsUntilClose= seconds*1000;
    eventOnClose=eventAfter;
  }
  
  
  //Return true which tells says the program is done(millisSecondsUntilClose ran out)
  boolean drawPrompt(){
    int timeAllapsed = millis() - startedDrawing;
    if(startedDrawing==null){
      startedDrawing=millis();
    } else if( timeAllapsed > milliSecondsUntilClose){
     return true;//tell uppper program to call it's trigger End Event
    }
    
    background(backgroundColour.x,backgroundColour.y,backgroundColour.z);
    
    fill(highLightColour.x,highLightColour.y,highLightColour.z);
    text(textToUser,width/5,height/10,width*3/5,height/2);
    arc(width/2,height*2/3,width/10,height/10,0,PI*2*((milliSecondsUntilClose-timeAllapsed)/milliSecondsUntilClose),PIE);
    
    fill(backgroundColour.x,backgroundColour.y,backgroundColour.z);
    ellipse(width/2,height*2/3,width/14,height/14);
    
    
    return false;//tell upper program that it is still running
  }
  
  void triggerEndEvent(){
    switch(eventOnClose){
     case FinishEvent.EXIT_ENTIRE_PROGRAM:
     exit();
     case FinishEvent.CONTINUE_PROGRAM:
     
     case FinishEvent.NOTHING:
     default:
     
    }
  }
  
}