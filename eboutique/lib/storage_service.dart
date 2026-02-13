import 'package:get_storage/get_storage.dart';

class StorageService {
  final box = GetStorage();

  void addToCart(String image) {
    List cart = box.read("cart") ?? [];
    cart.add(image);
    box.write("cart", cart);
  }

  List getCart() {
    return box.read("cart") ?? [];
  }
}
