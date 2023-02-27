//Take two lists and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.


// Method 

void main(){
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    //List<int> c = [];
    Set<int> c = {};

    for(int i in a){
        for(int j in b){
            if(i == j){
                c.add(i);
            }
        }
    }
    print(c.toString());

    //oneline code using sets and without using loops.
    //print(Set.from(a).intersection(Set.from(b)).toList());
}