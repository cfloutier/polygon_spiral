 //<>//
class DrawingGenerator
{
     DrawingData data;
      
      PVector center = new PVector(400,400);
      
      void drawPolarLine(float radius1, float angle1, float radius2, float angle2)
      {
        line(center.x+radius1*cos(radians(angle1)), center.y+radius1*sin(radians(angle1)), center.x+radius2*cos(radians(angle2)), center.y+radius2*sin(radians(angle2)));   
      }
      
      
      void DrawPolygon(float radius, int NbFaces, float startAngle)
      {
        float angle = startAngle;
        float deltaAngle = 360.0/NbFaces;
        for (int i = 0; i < NbFaces; i++)
        {
            float angle2 = angle + deltaAngle;
            drawPolarLine(radius, angle, radius, angle2);
            angle = angle2;
        }
      }

    void draw()
    {
      if (data.PolygonFaces < 3)
        data.PolygonFaces = 3;
        
      if (data.Nb < 2)
        data.Nb = 2;
        
        
        
        float weight = data.LineWeight;
        float  radius = data.Radius;
        float angle = 90;
        
      for (int i = 0 ; i < data.Nb; i++)
      {
          strokeWeight(weight);
          DrawPolygon(radius, data.PolygonFaces, angle);
          angle = angle + data.Rotation;
          radius = radius * data.ratioRadius;
          weight = weight * data.ratioWeight;
      }
    }
        
  
}
