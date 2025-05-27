import '../utils/input.dart';

class AuthService {
  final String _username = 'admin';
  final String _password = '1234';

  bool login() {
    print("\n-- Login --");
    String user = readInput("Username: ");
    String pass = readInput("Password: ");
    if (user == _username && pass == _password) {
      print("Login successful.\n");
      return true;
    } else {
      print("Invalid credentials. Exiting.");
      return false;
    }
  }
}
