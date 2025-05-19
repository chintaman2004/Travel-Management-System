import '../models/employee.dart';
import '../utils/input.dart';

class HRService {
  final List<Employee> _employees = [];

  void menu() {
    print("\n-- HR Management --");
    print("1. Add Employee");
    print("2. View Employees");
    String choice = readInput("Select: ");
    if (choice == '1') {
      String name = readInput("Name: ");
      String role = readInput("Role: ");
      int id = _employees.length + 1;
      _employees.add(Employee(id, name, role));
      print("Employee added.");
    } else {
      _employees.forEach((e) => print("${e.id}: ${e.name} - ${e.role}"));
    }
  }
}
