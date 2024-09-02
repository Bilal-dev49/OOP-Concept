void main() {
  Dell dell = Dell("Dell", 120000.00, "Inspiron 14");
  dell.displayInfo();
}

//parent class
class Laptop {
  String brand;
  double price;
  Laptop(this.brand, this.price) {
    print('Laptop created');
  }
  void laptopDetails() {
    print('Brand: $brand, Price: $price');
  }
}

class Dell extends Laptop {
  String model;
  // when ever we extend a parent class having constructor we create constructor of child
  // class with parameters of parent class constructor using super
  Dell(String brand, double price, this.model) : super(brand, price);
  void displayInfo() {
    //for calling medthod of super class
    super.laptopDetails();
    print('Model: $model');
  }
  //_private member of the super class is accessible within the same dart file but not accessible in other dart file
}
