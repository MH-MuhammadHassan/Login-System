import 'dart:io';

void main() {
  // List of registered users
  final List<Map<String, String>> users = [
    {"email": "hassan@gmail.com", "password": "123"},
    {"email": "bisma@gmail.com", "password": "123"},
    {"email": "ayesha@gmail.com", "password": "123"},
    {"email": "ali@gmail.com", "password": "123"},
    {"email": "sawera@gmail.com", "password": "123"}
  ];

  bool isLoggedIn = false;

  // Login loop
  while (!isLoggedIn) {
    stdout.write("Enter your email: ");
    final String? email = stdin.readLineSync();
    stdout.write("Enter your password: ");
    final String? password = stdin.readLineSync();

    if (email != null && password != null) {
      // Validate credentials
      for (var user in users) {
        if (email == user["email"] && password == user["password"]) {
          print("Login Successful!");
          isLoggedIn = true;
          break;
        }
      }

      if (!isLoggedIn) {
        print("Invalid Email or Password. Please try again.");
      }
    } else {
      print("Invalid input. Email and password cannot be empty.");
    }
  }
}
