import 'services/customer_service.dart';
import 'services/trip_service.dart';
import 'services/booking_service.dart';
import 'utils/input.dart';

void main() {
  final customerService = CustomerService();
  final tripService = TripService();
  final bookingService = BookingService();

  while (true) {
    print("\nTravel Management System");
    print("1. Add Customer");
    print("2. Add Trip");
    print("3. View Customers");
    print("4. View Trips");
    print("5. Book a Trip");
    print("6. View Bookings");
    print("0. Exit");

    String choice = readInput("Enter your choice: ");

    switch (choice) {
      case '1':
        String name = readInput("Enter customer name: ");
        String email = readInput("Enter customer email: ");
        customerService.addCustomer(name, email);
        break;
      case '2':
        String destination = readInput("Enter trip destination: ");
        String priceStr = readInput("Enter trip price: ");
        double price = double.tryParse(priceStr) ?? 0;
        tripService.addTrip(destination, price);
        break;
      case '3':
        for (var c in customerService.getAllCustomers()) {
          print("${c.id}: ${c.name} - ${c.email}");
        }
        break;
      case '4':
        for (var t in tripService.getAllTrips()) {
          print("${t.id}: ${t.destination} - \$${t.price}");
        }
        break;
      case '5':
        String custId = readInput("Enter customer ID: ");
        String tripId = readInput("Enter trip ID: ");
        bookingService.bookTrip(int.parse(custId), int.parse(tripId));
        break;
      case '6':
        bookingService.printAllBookings(
          customerService.getAllCustomers(),
          tripService.getAllTrips(),
        );
        break;
      case '0':
        print("Goodbye!");
        return;
      default:
        print("Invalid option. Try again.");
    }
  }
}
