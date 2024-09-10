// Polymorphism allow the object of different classes that are inherit from parent class
// we can define polymorphism as the ability of a message to be displayed in more than one form.
// Real life example of polymorphism, a person at the same time can have different characteristic.
// Like a man at the same time is a father, a husband, an employee.
// Method overloading refers to defining multiple methods with the same name
// but different parameters within the same class

// Dart does'nt deal with overloading it only use overriding for polymorphism

// Overriding in Dart means providing a new version of a method in a subclass
// that already exists in the parent class. When you override a method,
// the subclass’s method is used instead of the parent class's method.

// Simple Example:
// Let’s say you have a parent class called Animal with a method makeSound().
// If a subclass, like Dog, wants to provide its own version of makeSound(),
// it will override that method.

void main() {
  Animal cat = Cat("Cat", "Persion", 6);
  cat.animalInfo();
  Animal dog = Dog("Dog", "Hasky", 3);
  dog.animalInfo();
}

class Animal {
  String animalType;
  String animalName;
  Animal(this.animalType, this.animalName);
  void animalInfo() {
    print('Animal Type: $animalType, Animal Name: $animalName');
  }
}

class Cat extends Animal {
  int age;
  Cat(String animalType, String animalName, this.age)
      : super(animalType, animalName);
  @override
  void animalInfo() {
    super.animalInfo();
    print("Your cat age is $age months");
  }
}

class Dog extends Animal {
  int age;
  Dog(String animalType, String animalName, this.age)
      : super(animalType, animalName);
  @override
  void animalInfo() {
    super.animalInfo();
    print("Your dog age is $age months");
  }
}
