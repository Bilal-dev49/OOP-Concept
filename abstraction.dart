// Abstract class is a special class that can't we intialize, we can't create constructor of abstract class
// In Abstract class we basiclly define the behaviour and methods.
// If another class inherit that abstract class it implement that behaviour and method
// Abstract method is a specialized method that define inside the abstract class.
// Abstract method is a method that have no implementation, it is just a declaration of method.

void main() {
  NetworkServicesApi networkServicesApi = NetworkServicesApi("John");
  Map<String, String> data = {
    "email": "John@gmail.com",
    "password": "1234",
  };
  networkServicesApi.postApi(data);
}

abstract class BaseApiServices {
  void postApi(var data);
  void getApi();
}

class NetworkServicesApi extends BaseApiServices {
  String name;
  NetworkServicesApi(this.name);
  @override
  void getApi() {}
  @override
  void postApi(var data) async {
    print('Post API is called');
    await Future.delayed(Duration(seconds: 2));
    print("$name Sucessfully Register");
    print(data["email"]);
  }
}
