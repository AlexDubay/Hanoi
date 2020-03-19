public class PegArr {
  
  private Peg[] ps;
  
  public PegArr() {
    ps = new Peg[NUMOFPEG];
    for (int i = 0; i < ps.length; i++) {
      ps[i] = new Peg(i);
    }
    Disc d;
    for (int j = NUMOFDISC; j > 0; j--) {
      d = new Disc(j);
      ps[0].add(d);
    }
  }
  
  public Peg findHitbox(int mx) {
    for (Peg p: ps) {
      if (p.hitbox(mx)) {
        return p;
      }
    }
    //System.err.println("mouse outside hitboxes");
    return null;
  }
  
  //num of discs on peg
  public int pegSize(int peg) {
    if (peg < 0 || peg >= NUMOFPEG) {
      System.err.println("peg num does not exsist");
      return -1;
    } else {
      return this.ps[peg].size();
    }
  }
  
  public int frontSize(int peg) {
    if (peg < 0 || peg >= NUMOFPEG) {
      System.err.println("peg num does not exsist");
      return -1;
    } else {
      return this.ps[peg].frontSize();
    }
  }
  
  //moves disc from peg a to peg b
  public void moveTo(int a, int b) {
    this.ps[a].moveTo(this.ps[b]);
  }
  
  public void show() {
    for (Peg p: this.ps) {
      p.show();
    }
  }
}
