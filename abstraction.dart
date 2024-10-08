// Abstraction in Dart is the process of hiding complex implementation details and showing only the essential features to the user.
// Abstract class is a special class that can't we intialize, we can't create constructor of abstract class
// In Abstract class we basiclly define the behaviour and methods.
// If another class inherit that abstract class it implement that behaviour and method
// Abstract method is a specialized method that define inside the abstract class.
// Abstract method is a method that have no implementation, it is just a declaration of method.
// Abstraction is the concept of simplifying complex systems by focusing on the essential details and ignoring the rest.
void main() {
  NetworkServicesApi networkServicesApi = NetworkServicesApi("Hafi");
  Map<String, String> data = {
    "username": "Hafi32150",
    "email": "Syed@gmail.com",
    "password": "1234",
  };
  networkServicesApi.postApi(data);
}

abstract class BaseApiServices {
  //Abstract method having no body
  void postApi(var data);
  void getApi();
}

class NetworkServicesApi extends BaseApiServices {
  String name;
  NetworkServicesApi(this.name);
  // method overriding involves creating a method in the child class
  // that has the same name, parameters, and return type as a method in the parent class.
  @override
  void getApi() {
    print("Get API called");
  }

  @override
  void postApi(var data) async {
    print('Post API is called');
    await Future.delayed(Duration(seconds: 2));
    print("$name Sucessfully Register with a username of ${data["username"]}");
    print("Email: ${data["email"]}");
  }
}
