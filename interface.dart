// Interface is a simple class in which we define some methods and then we
// extend or implement that interface class in other classes but we override and
// or do concrete implementation
// There are two ways to define it -> concrete -> Abstract
// An interface is like a list of rules that says,
// "If you want to play this game, you must do these things."
// Each player (or class) can play the game their own way, but they all have to follow the same basic rules.
// For example, imagine a game where everyone must jump, run, and shout.
// How they jump, run, and shout is up to them, but they all have to be able to do those three things to play the game.

void main() {
  // Creating an object of the class that implements the interface
  MacBook macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();

  // Creating object of cat and dog
  Cat cat = Cat();
  cat.sound();

  Dog dog = Dog();
  dog.eat();

  List<Animal> name = [Cat(), Dog()];
  print(name);
}

// -> Concrete method of defining Interface
// Every class its self a concrete class
class Laptop {
  void turnOn() {
    print("Laptop is on");
  }

  void turnOff() {
    print("Laptop is off");
  }
}

// We use implements rather than extend when we use concrete method to define an interface
class MacBook implements Laptop {
  // override allow us to use the funtion or method of parent class or other class.
  // And we can also do changes in body of method while overriding

  // If we implement the interface class we must use its all method
  @override
  void turnOn() {
    print("MacBook is on");
  }

  @override
  void turnOff() {
    print("MacBook is off");
  }
}

//  -> Abstract method of defining Interface class

abstract class Animal {
  // Abstract method
  void sound();

  // non-abstract method
  void eat() {
    print("Animal is eating");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    super.eat();
    print("Meow");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Woof");
  }
}
