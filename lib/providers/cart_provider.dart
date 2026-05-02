import 'package:flutter/material.dart';
import '../models/cart_item_model.dart';
import '../models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  int get itemCount {
    int count = 0;
    for (final item in _items) {
      count += item.quantity;
    }
    return count;
  }

  double get totalPrice {
    double total = 0;
    for (final item in _items) {
      total += item.totalPrice;
    }
    return total;
  }

  void addItem(Product product, String size, String color) {
    for (int i = 0; i < _items.length; i++) {
      if (_items[i].product.id == product.id &&
          _items[i].selectedSize == size &&
          _items[i].selectedColor == color) {
        _items[i].quantity++;
        notifyListeners();
        return;
      }
    }
    _items.add(CartItem(
      product: product,
      quantity: 1,
      selectedSize: size,
      selectedColor: color,
    ));
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void updateQuantity(int index, int quantity) {
    if (quantity <= 0) {
      removeItem(index);
    } else {
      _items[index].quantity = quantity;
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}