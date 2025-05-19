import '../models/customer.dart';

class CustomerService {
  final List<Customer> _customers = [];

  void addCustomer(String name, String email) {
    int id = _customers.length + 1;
    _customers.add(Customer(id, name, email));
    print("Customer added with ID: $id");
  }

  List<Customer> getAllCustomers() => _customers;
}
