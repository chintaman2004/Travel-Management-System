import '../models/trip.dart';

class TripService {
  final List<Trip> _trips = [];

  void addTrip(String destination, double price) {
    int id = _trips.length + 1;
    _trips.add(Trip(id, destination, price));
    print("Trip added with ID: $id");
  }

  List<Trip> getAllTrips() => _trips;
}
