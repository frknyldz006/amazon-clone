class CartItem {
  final Product product;
  final int quantity;
  CartItem({
    required this.product,
    required this.quantity,
  });
}
class Product {
  final String name;
  final double price;
  Product({
    required this.name,
    required this.price,
  });
}