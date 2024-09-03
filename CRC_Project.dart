// Car Rental Calculator Project
void main() {
  Car car = Car("Toyota", "Corolla Grande", 2024, 2);
  print("\nCar details: ");
  car.displayInfo();
  print("Rental price of car for 5 days: \$${car.calculateRentalPrice(5)}");
  Bike bike = Bike("Honda", "CG 125", 2023, false);
  bike.displayInfo();
  print("Rental price of bike for 5 days: \$${bike.calculateRentalPrice(5)}");
}

class Vahicle {
  String brand;
  String model;
  int year;
  Vahicle(this.brand, this.model, this.year);
  void displayInfo() {
    print('\nBrand: $brand');
    print('Model: $model');
    print("Year: $year");
  }

  double calculateRentalPrice(int days) {
    return days * 50.0; // Assuming $50 per day
  }
}

class Car extends Vahicle {
  int door;
  Car(String brand, String model, int year, this.door)
      : super(brand, model, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("No. of Doors: $door");
  }

  @override
  double calculateRentalPrice(int days) {
    return super.calculateRentalPrice(days) + 20 * door;
  }
}

class Bike extends Vahicle {
  bool hasCarrier;
  Bike(String brand, String model, int year, this.hasCarrier)
      : super(brand, model, year);
  // overiding the funcuntion of super class
  @override
  void displayInfo() {
    super.displayInfo();
    print("Has carrier or not: ${hasCarrier ? "yes" : "no"}");
  }

  @override
  double calculateRentalPrice(int days) {
    return super.calculateRentalPrice(days) - (hasCarrier ? 5.0 : 0.0);
  }
}
