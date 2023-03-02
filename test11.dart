import 'dart:math';

void main(){
    List newList = List.generate(10, (_)=> Random().nextInt(100));
    print(newList);
    print([newList.first, newList.last]);
}