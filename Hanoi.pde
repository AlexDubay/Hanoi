final int NUMOFDISC = 7, NUMOFPEG = 4;

PegArr pa;

AI ai;

Peg activePeg;
Disc activeDisc;

int pegSize;

boolean aiActive = false;

void setup() {
  size(400, 400);
  pa = new PegArr();
  
  pegSize = width / NUMOFPEG;
}

void draw() {
  background(0);
  pa.show();
  
  if (activeDisc != null && activeDisc.isActive()) {
    fill(activeDisc.getColor());
    rectMode(CENTER);
    rect(mouseX / pegSize * pegSize + pegSize / 2, height / 2 - Disc.HEIGHT,
      activeDisc.getSize() * Disc.WIDTHFACTOR, Disc.HEIGHT);
  }
}

void mousePressed() {
  if (!aiActive) {
    activePeg = pa.findHitbox(mouseX);
    if (!activePeg.isEmpty()) {
      activeDisc = activePeg.front();
      activeDisc.setActive(true);
    }
  }
}

void mouseReleased() {
  if (!aiActive) {
    Peg p = pa.findHitbox(mouseX);
    if (!activePeg.isEmpty()) {
      activePeg.front().setActive(false);
    }
    activePeg.moveTo(p);
    activeDisc = null;
  }
}

void keyPressed() {
  if (key == 'f') {
    aiActive = true;
    ai = new AI(pa);
    ai.start();
    aiActive = false;
  }
}
