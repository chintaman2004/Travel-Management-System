import '../models/customer.dart';
import '../utils/input.dart';

class CustomerService {
  List<Customer> _customers = <Customer>[];

  void menu() {
    print("\n-- Customer Management --");
    print("1. Add Customer");
    print("2. View Customer /s");
    String choice = readInput("Select: ");
    if (choice == '1') {
      String name = readInput("Name: ");
      String email = readInput("Email: ");
      int id = _customers.length + 1;
      Customer customer = Customer(id, name, email);
      _customers.add(customer);
      print("Customer added.");
    } else {
      for (int i = 0; i < _customers.length; i++) {
        Customer c = _customers[i];
        print("${c.id}: ${c.name} - ${c.email}");
      }
    }
  }

  List<Customer> getAll() {
    return _customers;
  }
}
