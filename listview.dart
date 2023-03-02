class Person {
  final String? name;
  final String? avatarUrl;

  Person({this.name, this.avatarUrl});
}

void main() {
  var dummyPersonList = new List<Person>.generate(5, (i) {
    return Person(
      name: 'John Doe',
      avatarUrl: 'http://somewebsite.com/dummy_avatar.jpg',
    );
  });
    for(var dummy in dummyPersonList){
        print("[${dummy.name}, ${dummy.avatarUrl}]");
    }
}
