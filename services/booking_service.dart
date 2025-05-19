import '../models/booking.dart';
import '../models/customer.dart';
import '../models/trip.dart';

class BookingService {
  final List<Booking> _bookings = [];

  void bookTrip(int customerId, int tripId) {
    _bookings.add(Booking(customerId, tripId));
    print("Trip booked successfully!");
  }

  List<Booking> getAllBookings() => _bookings;

  void printAllBookings(List<Customer> customers, List<Trip> trips) {
    for (var booking in _bookings) {
      final customer = customers.firstWhere((c) => c.id == booking.customerId);
      final trip = trips.firstWhere((t) => t.id == booking.tripId);
      print(
        "${customer.name} booked a trip to ${trip.destination} for \$${trip.price}",
      );
    }
  }
}
