/* Parent Class (base, super)
           |
           |--> Child Class (derived, subclass)
*/
// Inheritance in dart is key feature of OOP that allows a class (derived class or subclass)
// to inherit properties and methods from another class (base class or superclass).
// This enables code reusibilty and establishes a natural hierarchy between classes
void main() {
  // Creating an object of the child class
  Student student = Student();
  student.name = "Bilal";
  student.age = 24;
  student.displayInfo();
  student.studentId = "32049";
  student.semester = "8th";
  student.displayStudentInfo();
}

class Person {
  String? name;
  int? age;
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class Student extends Person {
  String? studentId;
  String? semester;
  void displayStudentInfo() {
    print('Student ID: $studentId, Semester: $semester');
  }
}
