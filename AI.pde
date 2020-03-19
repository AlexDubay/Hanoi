public class AI {
  
  private PegArr pa;
  
  public AI(PegArr pa) {
    this.pa = pa;
  }
  
  public void start() {
    moveStack(0, NUMOFPEG - 1, NUMOFDISC - 1);
  }
  
  //moves all discs under or equal to size l from peg a to peg b
  private void moveStack(int a, int b, int l) {
    //debug
    println(l);
    //if (l < 0) delay(5000);
    
    if (this.pa.pegSize(a) != 0 || this.pa.frontSize(a) <= l) { //<>//
      if (pa.frontSize(a) == l) {
        pa.moveTo(a, b);
      } else {
        int targetPeg = b + 1;
        while (targetPeg % NUMOFPEG == b && targetPeg % NUMOFPEG == a) {
          targetPeg++;
        }
        moveStack(a, targetPeg % NUMOFPEG, l - 1); //<>//
        pa.moveTo(a, b);
        moveStack(targetPeg % NUMOFPEG, b, l - 1);
      }
    }
  }
}
