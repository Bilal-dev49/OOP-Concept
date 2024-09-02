//encapsulation is the process of making class proterties, attributes and methods private to make non-accessible for other classes and function.
import 'personEncap.dart';

void main() {
  Person person = Person("BIlal", 24);
  person.displayInfo();
  //after updating values
  person.setName = "Hafi";
  person.setAge = 25;
  print(person.name);
  print(person.age);
}
