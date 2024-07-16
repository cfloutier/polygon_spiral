import controlP5.*; //<>// //<>// //<>//


class DrawingData
{
  int PolygonFaces = 3;
  int Nb = 100;
  
  float Rotation = 2; 
  
  float Radius = 100; 
  float ratioRadius = 0.9; 
        
  float LineWeight = 1;
  float ratioWeight = 0.9;
       
    void LoadJson(String path)
    {
      JSONObject json = loadJSONObject(path);
      
      PolygonFaces = json.getInt("PolygonFaces", PolygonFaces);
      Nb = json.getInt("Nb", Nb);
      
      Rotation = json.getFloat("Rotation", Rotation);
      
      Radius = json.getFloat("Radius", Radius);
      ratioRadius = json.getFloat("ratioRadius", ratioRadius);
      
      LineWeight = json.getFloat("LineWeight", LineWeight);
      ratioWeight = json.getFloat("ratioWeight", ratioWeight);

    }
    
    void SaveJson(String path)
    {
      JSONObject json = new JSONObject();
      
      json.setInt("PolygonFaces", PolygonFaces);
      json.setInt("Nb", Nb);
      
      json.setFloat("Rotation", Rotation);
      
      json.setFloat("Radius", Radius);
      json.setFloat("ratioRadius", ratioRadius);
      
      json.setFloat("LineWeight", LineWeight);
      json.setFloat("ratioWeight", ratioWeight);
           
      saveJSONObject(json, path);
    }
    
}
