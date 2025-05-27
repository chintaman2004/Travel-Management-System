import '../models/payment.dart';
import '../utils/input.dart';

class FinanceService {
  List<Payment> _payments = <Payment>[];

  void menu() {
    print("\n-- Finance Management --");
    print("1. Record Payment");
    print("2. View Payments");
    String choice = readInput("Select: ");
    if (choice == '1') {
      int bid = int.parse(readInput("Booking ID: "));
      double amt = double.parse(readInput("Amount: "));
      int id = _payments.length + 1;
      Payment payment = Payment(id, bid, amt);
      _payments.add(payment);
      print("Payment recorded.");
    } else {
      for (int i = 0; i < _payments.length; i++) {
        Payment p = _payments[i];
        print("Payment ID ${p.id}: \$${p.amount} for Booking ${p.bookingId}");
      }
    }
  }
}
