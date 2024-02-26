import 'dart:io';
import 'addProduct.dart';
import 'displayProduct.dart';
import 'generateReport.dart';
import 'processSale.dart';

List<Map<String, dynamic>> inventory = [
  {"name": "Avsar 160/5 mg", "price": 693.54, "quantity": 140},
  {"name": "X-plended 10mg", "price": 320.54, "quantity": 75},
  {"name": "Panadol", "price": 30, "quantity": 50},
  {"name": "Lowplate 75mg", "price": 214.46, "quantity": 60},
];
List<Map<String, dynamic>> customers = [
  {
    "name": "Hamza",
    "cart": [
      {"name": "Avsar 160/5 mg", "price": 693.54, "quantity": 12}
    ]
  }
];

void main() {
  while (true) {
    print("\n ----------------(Pharmacy Management System)----------------");
    print("1. Add Product");
    print("2. Display Inventory");
    print("3. Process Sale");
    print("4. Generate Summary Report");
    print("5. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      addProduct();
    } else if (choice == 2) {
      displayProduct();
    } else if (choice == 3) {
      processSale();
    } else if (choice == 4) {
      generateSummaryReport();
    } else {
      exit(0);
    }
  }
}

// void generateSummaryReport() {
//   print("\n------------- Summary Report ---------------");
//   for (Map<String, dynamic> customer in customers) {
//     print("Customer: ${customer['name']}");
//     double totalAmount = 0;
//     for (Map<String, dynamic> product in customer['cart']) {
//       print(
//           "\n ${product['name']}- Quantity: ${product['quantity']} - Price: \$${product['price']}");
//       totalAmount += product['price'] * product['quantity'];
//     }
//     print("Total Amount: \$${totalAmount.toStringAsFixed(2)}\n");
//   }
// }
