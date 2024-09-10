// Records lets you combine mutliple value in single object

void main() {
  var person = (name: "Bilal", Id: 32049);
  print("Name: " + person.name);
  print("Id: " + person.Id.toString());
  var arthOp = arth(10, 20);
  var (sum, sub) = arthOp;
  print("Sum: $sum");
  print("Sub: $sub");

  DateTime now = DateTime(2024, 8, 12);
  var (days, hours) = returnDaysHours(now);
  print("Days difference: $days");
  print("Minutes difference: $hours");
}

(int, int) arth(int x, int y) {
  return (x + y, x - y);
}

(int, int) returnDaysHours(DateTime date) {
  DateTime now = DateTime.now();
  var days = now.difference(date).inDays;
  var hours = now.difference(date).inHours;
  return (days, hours);
}
