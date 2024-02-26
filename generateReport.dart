import 'main.dart';

void generateSummaryReport() {
  print("\n-------Summary Report--------\n");
  for (Map<String, dynamic> customer in customers) {
    print("Customer: ${customer['name']}");
    double totalAmount = 0;
    for (Map<String, dynamic> product in customer['cart']) {
      print(
          "${product['name']}- Quantity: ${product['quantity']} - Price: \$${product['price']}");
      totalAmount += product['price'] * product['quantity'];
    }
    print("Total Amount: \$${totalAmount.toStringAsFixed(2)}\n");
  }
}
