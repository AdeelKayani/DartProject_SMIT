import 'dart:io';
import 'main.dart';

void addProduct() {
  print("\n--------Enter product details--------:");
  stdout.write("Product Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Price: ");
  double price = double.parse(stdin.readLineSync()!);
  stdout.write("Quantity: ");
  int quantity = int.parse(stdin.readLineSync()!);

  Map<String, dynamic> newProduct = {
    'name': name,
    'price': price,
    'quantity': quantity,
  };
  inventory.add(newProduct);
  print("\nProduct added successfully!\n");
}
