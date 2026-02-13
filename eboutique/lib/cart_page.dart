import 'package:flutter/material.dart';
import 'storage_service.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    StorageService storage = StorageService();
    List cart = storage.getCart();

    return Scaffold(
      appBar: AppBar(title: const Text("Lis Achte")),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(cart[index], width: 50),
            title: const Text("Produit Achte"),
          );
        },
      ),
    );
  }
}
