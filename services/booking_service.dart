import '../models/booking.dart';
import '../models/customer.dart';
import '../models/trip.dart';
import '../utils/input.dart';
import 'customer_service.dart';
import 'trip_service.dart';

class BookingService {
  final List<Booking> _bookings = [];

  void menu(CustomerService cs, TripService ts) {
    print("\n-- Booking Management --");
    print("1. Book a Trip");
    print("2. View Bookings");
    String choice = readInput("Select: ");
    if (choice == '1') {
      int cid = int.parse(readInput("Customer ID: "));
      int tid = int.parse(readInput("Trip ID: "));
      _bookings.add(Booking(cid, tid));
      print("Booking added.");
    } else {
      for (var b in _bookings) {
        var c = cs.getAll().firstWhere((x) => x.id == b.customerId);
        var t = ts.getAll().firstWhere((x) => x.id == b.tripId);
        print("${c.name} booked ${t.destination} for \$${t.price}");
      }
    }
  }
}
