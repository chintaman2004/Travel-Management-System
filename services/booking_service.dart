import '../models/booking.dart';
import '../models/customer.dart';
import '../models/trip.dart';
import '../utils/input.dart';
import 'customer_service.dart';
import 'trip_service.dart';

class BookingService {
  List<Booking> _bookings = <Booking>[];

  void menu(CustomerService cs, TripService ts) {
    print("\n-- Booking Management --");
    print("1. Book a Trip");
    print("2. View Bookings");
    String choice = readInput("Select: ");
    if (choice == '1') {
      int cid = int.parse(readInput("Customer ID: "));
      int tid = int.parse(readInput("Trip ID: "));
      Booking booking = Booking(cid, tid);
      _bookings.add(booking);
      print("Booking added.");
    } else {
      List<Customer> customers = cs.getAll();
      List<Trip> trips = ts.getAll();
      for (int i = 0; i < _bookings.length; i++) {
        Booking b = _bookings[i];
        Customer c = customers.firstWhere((Customer x) => x.id == b.customerId);
        Trip t = trips.firstWhere((Trip x) => x.id == b.tripId);
        print("${c.name} booked ${t.destination} for \$${t.price}");
      }
    }
  }
}
