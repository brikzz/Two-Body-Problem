class Vector{
  private double dx;
  private double dy;
    
  public Vector(double newDX, double newDY){
    dx = newDX;
    dy = newDY;
  }
    
  public double getDX(){
    return dx;
  }
    
  public double getDY(){
    return dy;
  }
  
  public Vector scale(double scalar){
      Vector vec = new Vector(scalar * dx, scalar * dy);
      return vec;
  }
  
  public Vector subtract(Vector v){
      Vector vec = new Vector(dx - v.getDX(), dy - v.getDY());
      return vec;
  }
  
  public double dot(Vector v){
      double product = (dx * v.getDX()) + (dy * v.getDY()));
      return product;
  }
  
  public Vector cross(Vector v){
      Vector vec = new Vector((dy * v.getDZ()) - (dz * v.getDY()), 
                              (dz * v.getDX()) - (dx * v.getDZ()),
                              (dx * v.getDY()) - (dy * v.getDX()));
    return vec;
  }
  
  public double length(){
    double l = Math.sqrt(this.dot(this));
    return l;
  }
  
  public Vector normalize(){
    Vector vec = this.scale(1/this.length());
    return vec;
  }

  public Vector add(Vector v){
      return new Vector(this.dx + v.getDX(), this.dy + v.getDY());
  }
}
