class Student{
    String? _name;
    int? _id;

    //Getter methods for name and id,

    String getName(){
        return this._name!;
    }
    int getId(){
       return this._id!; 
    }

    //Setter methods for name and id.

    void setName(String name){
        this._name = name;
    }
    void setId(int id){
        this._id = id;
    }
}


void main(){
    Student s = Student();
    s._name = "raj";
    s._id = 22;

    print(s._name);
}