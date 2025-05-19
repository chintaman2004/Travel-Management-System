import '../models/customer.dart';
import '../utils/input.dart';

class CustomerService {
  final List<Customer> _customers = [];

  void menu() {
    print("\n-- Customer Management --");
    print("1. Add Customer");
    print("2. View Customers");
    String choice = readInput("Select: ");
    if (choice == '1') {
      String name = readInput("Name: ");
      String email = readInput("Email: ");
      int id = _customers.length + 1;
      _customers.add(Customer(id, name, email));
      print("Customer added.");
    } else {
      _customers.forEach((c) => print("${c.id}: ${c.name} - ${c.email}"));
    }
  }

  List<Customer> getAll() => _customers;

  void addCustomer(String name, String email) {}

  getAllCustomers() {}
}
