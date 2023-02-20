void main() {
  WebDeveloper webDev = WebDeveloper();
  print(webDev.location);
  print(webDev.salary);
  webDev.develop();
}
class Developer {
  String location = 'Colombo';
  int salary = 33000;
  void develop() {
    print('develops an applications');
  }
}
class WebDeveloper extends Developer {
  // @override
  void develop() {
    print('develops web applications');
  }
}