import 'dart:io';
import 'services/customer_service.dart';
import 'services/trip_service.dart';
import 'services/booking_service.dart';
import 'services/finance_service.dart';
import 'services/sales_service.dart';
import 'services/hr_service.dart';
import 'services/auth_service.dart';
import 'utils/input.dart';

void main() {
  AuthService authService = AuthService();
  if (!authService.login()) {
    exit(1);
  }

  CustomerService customerService = CustomerService();
  TripService tripService = TripService();
  BookingService bookingService = BookingService();
  FinanceService financeService = FinanceService();
  SalesService salesService = SalesService();
  HRService hrService = HRService();

  while (true) {
    print("\n=== Travel Management System ===");
    print("1. Customer Management");
    print("2. Trip Management");
    print("3. Booking Management");
    print("4. Finance Management");
    print("5. Sales Management");
    print("6. HR Management");
    print("0. Quit");

    String choice = readInput("Choose from below list: ");

    if (choice == '1') {
      customerService.menu();
    } else if (choice == '2') {
      tripService.menu();
    } else if (choice == '3') {
      bookingService.menu(customerService, tripService);
    } else if (choice == '4') {
      financeService.menu();
    } else if (choice == '5') {
      salesService.menu();
    } else if (choice == '6') {
      hrService.menu();
    } else if (choice == '0') {
      print("Exiting...");
      exit(0);
    } else {
      print("Invalid choice.Please choose from list above Try again.");
    }
  }
}
