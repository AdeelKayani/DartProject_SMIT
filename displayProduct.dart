import 'main.dart';

void displayProduct() {
  print("\n----------- Pharmacy Inventory ---------------\n");
  if (inventory.isEmpty) {
    print("Inventory is empty.");
  } else {
    for (int i = 0; i < inventory.length; i++) {
      print(
          "${i + 1}. ${inventory[i]['name']} - ${inventory[i]['quantity']} units");
    }
  }
}
