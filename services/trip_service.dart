import '../models/trip.dart';
import '../utils/input.dart';

class TripService {
  final List<Trip> _trips = [];

  void menu() {
    print("\n-- Trip Management --");
    print("1. Add Trip");
    print("2. View Trips");
    String choice = readInput("Select: ");
    if (choice == '1') {
      String dest = readInput("Destination: ");
      double price = double.parse(readInput("Price: "));
      int id = _trips.length + 1;
      _trips.add(Trip(id, dest, price));
      print("Trip added.");
    } else {
      _trips.forEach((t) => print("${t.id}: ${t.destination} - \$${t.price}"));
    }
  }

  List<Trip> getAll() => _trips;

  void addTrip(String destination, double price) {}

  getAllTrips() {}
}
