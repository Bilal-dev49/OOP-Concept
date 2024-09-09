// An enum is like a list of options where you can only pick one.
// For example, if you have an enum for "Days of the Week,"
// you can choose only from "Monday," "Tuesday," "Wednesday," etc., and nothing else.
// Enum is a special type that represent constant values

void main() {
  User user = User("Bilal", Gender.male, YourRole.developer);
  print(user.role.name);
  switch (user.gender) {
    case Gender.male:
      print(Gender.male.name);
      break;
    case Gender.female:
      print(Gender.female.name);
      break;
    case Gender.custom:
      print(Gender.custom.name);
  }
}

enum Gender { male, female, custom }

enum YourRole { user, admin, developer }

class User {
  String name;
  Gender gender;
  YourRole role;
  User(this.name, this.gender, this.role);
}
