import '../models/employee.dart';
import '../utils/input.dart';

class HRService {
  List<Employee> _employees = <Employee>[];

  void menu() {
    print("\n-- HR Management --");
    print("1. Add Employee");
    print("2. View Employees");
    String choice = readInput("Select: ");
    if (choice == '1') {
      String name = readInput("Name: ");
      String role = readInput("Role: ");
      int id = _employees.length + 1;
      Employee emp = Employee(id, name, role);
      _employees.add(emp);
      print("Employee added.");
    } else {
      for (int i = 0; i < _employees.length; i++) {
        Employee e = _employees[i];
        print("${e.id}: ${e.name} - ${e.role}");
      }
    }
  }
}
