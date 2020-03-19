public class Stack{
  
  private ArrayList<Disc> list = new ArrayList<Disc>();
  
  public Stack(){}
  
  public void push(Disc o) {
    this.list.add(0, o);
  }
  
  public Disc pop() {
    if (this.list.size() == 0) {
      return null;
    } else {
      return this.list.remove(0);
    }
  }
  
  public Disc front() {
    if (this.list.size() == 0) {
      return null;
    } else {
      return this.list.get(0);
    }
  }
  
  public void show(int x) {
    for (int i = this.list.size() - 1; i >= 0; i--) {
      this.list.get(i).show(this.list.size() - i - 1, x);
    }
  }
  
  public int size() {
    return this.list.size();
  }
}
