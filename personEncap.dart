class Person {
  //for making anything private we use underscore "_" with that
  String _name;
  int _age;
  Person(this._name, this._age);
  //In  encapsulation we use getter (get) to access the private value of the class.

  String get name => _name;
  int get age => _age;

  // And use setter (set) to update or modify the private value of the class.
  set setName(String name) {
    _name = name;
  }

  set setAge(int age) {
    if (age > 0) {
      _age = age;
    }
  }

  void displayInfo() {
    print("Name: $_name");
    print("Age: $_age");
  }
}
