class CircleButton {

  private int x, y;
  private int size;
  private color highlightColor;
  private color normalColor;

  public CircleButton(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;

  }

  public void setHighlightColor(color clr) { this.highlightColor = clr; }
  public void setNormalColor(color clr) { this.normalColor = clr; }

  public void draw() {
    if (isMouseOver()) {
      fill(highlightColor);
    } else {
      fill(normalColor);
    }
    stroke(0);
    ellipse(x, y, size, size); 
  }

  public boolean mousePressed() {
    return isMouseOver();
  }

  private boolean isMouseOver() {
    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < size/2 ) {
      return true;
    } else {
      return false;
    } 
  }
  
}

class RectButton {

  private int x, y;
  private int size;
  private color highlightColor;
  private color normalColor;

  public RectButton(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;

  }

  public void setHighlightColor(color clr) { this.highlightColor = clr; }
  public void setNormalColor(color clr) { this.normalColor = clr; }

  public void draw() {
    if (isMouseOver()) {
      fill(highlightColor);
    } else {
      fill(normalColor);
    }
    stroke(255);
    rect(x, y, size, size); 
  }

  public boolean mousePressed() {
    return isMouseOver();
  }
  
  private boolean isMouseOver() {
    if (mouseX >= x && mouseX <= x+size && 
      mouseY >= y && mouseY <= y+size) {
      return true;
    } else {
      return false;
    } 
  }
  
}

// ===== MAIN PROGRAM =====

color currentColor;

CircleButton cb;
RectButton rb;
RectButton anotherButton;

void setup() {
  size(640, 360);
  ellipseMode(CENTER);
  currentColor = color(102); 

  int circleSize = 93;
  int circleX = width/2+circleSize/2+10;
  int circleY = height/2;
  cb = new CircleButton(circleX, circleY, circleSize);
  cb.setNormalColor(color(255));
  cb.setHighlightColor(color(204));
  
  int rectSize = 90;
  int rectX = width/2-rectSize-10;
  int rectY = height/2-rectSize/2;
  rb = new RectButton(rectX, rectY, rectSize);
  rb.setNormalColor(color(100));
  rb.setHighlightColor(color(200));
  
  anotherButton = new RectButton(10, 10, 100);
  anotherButton.setNormalColor(color(0));
  anotherButton.setHighlightColor(color(200));
}


void draw() {
  background(currentColor);
  rb.draw();
  cb.draw();
  anotherButton.draw();
}


void mousePressed() {
  if(cb.mousePressed()) { currentColor = color(255,0,0); }
  if(rb.mousePressed()) { currentColor = color(0,255,0); }
  if(anotherButton.mousePressed()) { currentColor = color(0,0,255); }
}