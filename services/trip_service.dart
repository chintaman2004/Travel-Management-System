import '../models/trip.dart';
import '../utils/input.dart';

class TripService {
  List<Trip> _trips = <Trip>[];

  void menu() {
    print("\n-- Trip Management --");
    print("1. Add Trip");
    print("2. View Trips");
    String choice = readInput("Select: ");
    if (choice == '1') {
      String dest = readInput("Destination: ");
      double price = double.parse(readInput("Price: "));
      int id = _trips.length + 1;
      Trip trip = Trip(id, dest, price);
      _trips.add(trip);
      print("Trip added.");
    } else {
      for (int i = 0; i < _trips.length; i++) {
        Trip t = _trips[i];
        print("${t.id}: ${t.destination} - \$${t.price}");
      }
    }
  }

  List<Trip> getAll() {
    return _trips;
  }
}
