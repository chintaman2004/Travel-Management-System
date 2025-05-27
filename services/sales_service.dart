import '../models/sale.dart';
import '../utils/input.dart';

class SalesService {
  List<Sale> _sales = <Sale>[];

  void menu() {
    print("\n-- Sales Management --");
    print("1. Record Sale");
    print("2. View Sales");
    String choice = readInput("Select: ");
    if (choice == '1') {
      int tid = int.parse(readInput("Trip ID: "));
      int qty = int.parse(readInput("Quantity: "));
      int id = _sales.length + 1;
      Sale sale = Sale(id, tid, qty);
      _sales.add(sale);
      print("Sale recorded.");
    } else {
      for (int i = 0; i < _sales.length; i++) {
        Sale s = _sales[i];
        print("Sale ID ${s.id}: ${s.quantity} of Trip ${s.tripId}");
      }
    }
  }
}
