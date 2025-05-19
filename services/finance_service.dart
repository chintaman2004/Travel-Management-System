import '../models/payment.dart';
import '../utils/input.dart';

class FinanceService {
  final List<Payment> _payments = [];

  void menu() {
    print("\n-- Finance Management --");
    print("1. Record Payment");
    print("2. View Payments");
    String choice = readInput("Select: ");
    if (choice == '1') {
      int bid = int.parse(readInput("Booking ID: "));
      double amt = double.parse(readInput("Amount: "));
      int id = _payments.length + 1;
      _payments.add(Payment(id, bid, amt));
      print("Payment recorded.");
    } else {
      _payments.forEach(
        (p) => print(
          "Payment ID ${p.id}: \$${p.amount} for Booking ${p.bookingId}",
        ),
      );
    }
  }
}
