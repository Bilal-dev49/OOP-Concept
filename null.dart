void main() {
  //Non-nullable variable that we create and assign the value e.g., int age = 24;
  int age = 24;
  //Nullable variable are those that we just create but don’t assign any value e.g., double height;
  double height;
  //Null is a dummy value that we don’t assign any value to that variable which is null
  //We make a variable non-nullable by using ? e.g., String ? name; means  now it will show null
  double? height2;
  print(age);
  // print(height); It will show error becoz it doesn't have any value or null
  print(height2);
  height = 5.8;
  print(height);
  // ignore: unnecessary_null_comparison
  if (height2 == null) {
    print("Height is null");
  }
}
