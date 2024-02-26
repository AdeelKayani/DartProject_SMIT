import 'dart:io';
import 'displayProduct.dart';
import 'main.dart';

void processSale() {
  displayProduct();
  if (inventory.isEmpty) {
    print("Cannot process sale. Inventory is empty.");
  } else {
    stdout.write("\nEnter the product number to sell: ");
    int productNumber = int.parse(stdin.readLineSync()!) - 1;

    if (productNumber < 0 || productNumber >= inventory.length) {
      print("Invalid product number.");
    } else {
      stdout.write("Enter the quantity to sell: ");
      int quantityToSell = int.parse(stdin.readLineSync()!);

      if (quantityToSell <= 0 ||
          quantityToSell > inventory[productNumber]['quantity']) {
        print("Invalid quantity.");
      } else {
        num totalPrice = quantityToSell * inventory[productNumber]['price'];
        print("Total Price: ${totalPrice}");

        inventory[productNumber]['quantity'] -= quantityToSell;

        stdout.write("Enter customer name: ");
        String customerName = stdin.readLineSync()!;
        Map customer = findOrCreateCustomer(customerName);
        customer['cart'].add({
          'name': inventory[productNumber]['name'],
          'price': inventory[productNumber]['price'],
          'quantity': quantityToSell,
        });
        print(customer);
        print("\n Sale completed successfully!\n");
      }
    }
  }
}

findOrCreateCustomer(String name) {
  for (Map<String, dynamic> customer in customers) {
    if (customer['name'].toLowerCase() == name.toLowerCase()) {
      return customer;
    }
  }
  Map<String, dynamic> newCustomer = {
    'name': name,
    'cart': [],
  };
  customers.add(newCustomer);
  return newCustomer;
}
