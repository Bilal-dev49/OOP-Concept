// Mixin is basically a concept that allow you share the code between different clsses
// Mixin don't allow to create object and constructor
// Mixin class can't be extendable
// Multiple Mixin can be used in a single class

void main() {
  Account account = Account("bilal123@gmail.com", "bilal123");
  account.accountDetails();
}

// we use with for accessing mixin
class Account with logger, validation {
  String email, password;
  Account(this.email, this.password);
  void accountDetails() {
    if (passwordValidation(password) != null) {
      log(passwordValidation(password).toString());
    } else {
      print("Email: $email, Password: $password");
    }

    log("Email: $email, Password: $password"); // calling mixin method
  }
}

mixin logger {
  void log(String message) {
    print(message);
  }
}
mixin validation {
  String? passwordValidation(String pswrd) {
    if (pswrd.isEmpty) {
      print("Password should not be empty");
    }
    if (pswrd.length < 6) {
      print("Password should be at least 6 character long");
    }
    return null;
  }
}
