void main() {
  //creating object or instance variable
  Person person = new Person();
  person.name = "Bilal Ahmed";
  person.age = 25;
  person.address = "Rawalpindi";
  person.isStudent = true;
  //display info or calling method or function inside the class
  person.displayInfo();

  //creating another object
  //Example : Like ford is blueprint (class) or model and now it has multiple objects
  Person person1 = Person();

  person1.name = "Syed Hafi";
  person1.age = 25;
  person1.address = "Kohat";
  person1.isStudent = true;
  //calling method
  person1.displayInfo();

  //object for Student class with name student1
  Student student1 = new Student();
  student1.name = "Bilal Ahmed";
  student1.age = 24;
  student1.grade = "A";
  student1.studentId = 32049;
  student1.displayResult();
  student1.updateGrade("A+");
}

// class is blueprint of creating object, for e.g., iphone is an obejects means millions of object
class Person {
  // Attributes (fields or properties) for e.g., name, age etc
  String? name;
  int? age;
  String? address;
  bool? isStudent;
  void displayInfo() {
    print("\nName: $name");
    print("Age: $age");
    print("Address: $address");
    print("Is student: $isStudent");
  }
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentId;
  void displayResult() {
    print("\n");
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
    print("Student Id: $studentId");
    print("------------------------");
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("New grade $newGrade assign to $name");
  }
}
