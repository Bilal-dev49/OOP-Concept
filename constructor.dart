//constructor is a specialized method to initailize object
//A constructor automatically for the values of attributes or properties
//constructor is called by default when object is created
//constructor is same name of class
void main() {
  //creating object of class
  Student student = Student(
    name: "Bilal",
    dept: "CS",
    id: 32049,
    sem: 8,
    email: "bilal12@gmail.com",
  );
  student.displayInfo();
  Student student1 = Student(
    name: "Hafi",
    dept: "CS",
    id: 32150,
    sem: 8,
    email: "hafi@gmail.com",
  );
  student1.displayInfo();

  // Creating List by constructor values
  List<Student> studentList = [
    Student(
      name: "Bilal",
      dept: "CS",
      id: 32049,
      sem: 8,
      email: "bilal12@gmail.com",
    ),
    Student(
      name: "Hafi",
      dept: "CS",
      id: 32150,
      sem: 8,
      email: "hafi@gmail.com",
    ),
    Student(
      name: "Ali",
      dept: "CS",
      id: 32151,
      sem: 6,
      email: "ali45@gmail.com",
    ),
  ];
  //Displaying list data using foreach loop
  studentList.forEach((element) {
    print("Name: ${element.name}");
    print("Department: ${element.dept}");
    print("ID: ${element.id}");
    print("Semester: ${element.sem}");
    print("Email: ${element.email}\n");
  });
}

class Student {
  String? name;
  int? id;
  String? dept;
  int? sem;
  String? email;
  // Creating constructor for Student Class
  Student({this.name, this.dept, this.id, this.sem, required this.email});
  void displayInfo() {
    print("=================");
    print("Name: $name");
    print("ID: $id");
    print("Department: $dept");
    print("Semester: $sem");
    print("Email: $email");
    print("=================\n");
  }
}
