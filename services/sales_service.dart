import '../models/sale.dart';
import '../utils/input.dart';

class SalesService {
  final List<Sale> _sales = [];

  void menu() {
    print("\n-- Sales Management --");
    print("1. Record Sale");
    print("2. View Sales");
    String choice = readInput("Select: ");
    if (choice == '1') {
      int tid = int.parse(readInput("Trip ID: "));
      int qty = int.parse(readInput("Quantity: "));
      int id = _sales.length + 1;
      _sales.add(Sale(id, tid, qty));
      print("Sale recorded.");
    } else {
      _sales.forEach(
        (s) => print("Sale ID ${s.id}: ${s.quantity} of Trip ${s.tripId}"),
      );
    }
  }
}
