class Algebra{
    final int x;
    final int y;

    const Algebra(this.x, this.y);
    
}

void main(){
    Algebra a = Algebra(5, 10);
    Algebra b = Algebra(10, 10);

    print(a.hashCode);
    print(b.hashCode);
    print(a.x);
}