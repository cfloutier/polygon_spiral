import controlP5.*; //<>// //<>//


class DataGUI
{
    ControlP5 cp5;
    void setGUIValues(DrawingData data)
    {
      PolygonFaces.setValue(data.PolygonFaces);
      Nb.setValue(data.Nb);
      Rotation.setValue(data.Rotation);
     
      Radius.setValue(data.Radius);
      ratioRadius.setValue(data.ratioRadius);
      LineWeight.setValue(data.LineWeight);
      ratioWeight.setValue(data.ratioWeight);
    }
    
    
    
   Slider PolygonFaces;
   Slider Nb;
   Slider Rotation;
   Slider Radius;
   Slider ratioRadius;
   Slider LineWeight;
   Slider ratioWeight;
    
    void setupControls(DrawingData data, ControlP5 cp5)
  	{ 
    
      this.cp5 = cp5;
      
  	  float xPos = 0;
  	  float yPos = 20;
  	  int widthCtrl = 500; 
  	  int heightCtrl = 20;
  	  
  		PolygonFaces = cp5.addSlider(data, "PolygonFaces")   
        		 .setPosition(xPos,yPos)
        		 .setSize(widthCtrl,heightCtrl)
             .setRange(1,30)
             .setNumberOfTickMarks(30)
             .moveTo("Controls");
       
  		yPos+=heightCtrl;
  	  
  	  Nb = cp5.addSlider(data, "Nb")
        		 .setPosition(xPos,yPos)
        		 .setSize(widthCtrl,heightCtrl)
        		.setRange(1,400)
            .setNumberOfTickMarks(100)
            .moveTo("Controls");
  
      yPos+=heightCtrl;
  		 
      Rotation = cp5.addSlider(data, "Rotation")
              .setPosition(xPos,yPos)
              .setSize(widthCtrl,heightCtrl)
              .setRange(0,180)
              .moveTo("Controls");

  		 yPos+=heightCtrl;
  
      Radius = cp5.addSlider(data,"Radius")
             .setPosition(xPos,yPos)
             .setSize(widthCtrl,heightCtrl)
             .setRange(0,800)
             .moveTo("Controls");
       
      yPos+=heightCtrl;
      
  	  ratioRadius = cp5.addSlider(data,"ratioRadius")
            .setPosition(xPos,yPos)
            .setSize(widthCtrl,heightCtrl)
            .setRange(0,1)
            .moveTo("Controls");
  		 
  	  yPos+=heightCtrl;
  	  
  		LineWeight = cp5.addSlider(data,"LineWeight")
      		 .setPosition(xPos,yPos)
      		 .setSize(widthCtrl,heightCtrl)
      		 .setRange(1,20)
           .moveTo("Controls");
  
       ratioWeight = cp5.addSlider(data,"ratioWeight")
           .setPosition(xPos,yPos)
           .setSize(widthCtrl,heightCtrl)
           .setRange(1,20)
           .moveTo("Controls");
  	}
}
