import 'dart:io';

void main() {
  Area area = Area();
  stdout.write("Enter the height: ");
  area.height = double.parse(stdin.readLineSync()!);
  area.rectangleArea();
}

class Area {
  double? height;
  double? width;
  double? area;
  //This will show Exception that leads towards app crash
  /* void rectangleArea() {
    area = height! * width!;
    print("The area of rectangle is $area");
  }*/
  // For dealing with exceptions we use try catch
  void rectangleArea() {
    try {
      if (width == null || height == null) {
        //For Dealing with exception
        stdout.write("Enter the widht: ");
        width = double.parse(stdin.readLineSync()!);
        area = height! * width!;
        print("The area of rectangle is $area");
      }
    } catch (e) {
      print(e);
    }
  }
}
