import 'package:flutter/material.dart';
import 'product_model.dart';
import 'storage_service.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    StorageService storage = StorageService();

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(product.image, fit: BoxFit.cover),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.description,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 18)),
                  const SizedBox(height: 10),
                  Text(product.specs,
                      style: const TextStyle(color: Colors.white70)),
                  const Spacer(),
                  ElevatedButton.icon(
                    onPressed: () {
                      storage.addToCart(product.image);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Ajoute nan panier")),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text("Acheter"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
