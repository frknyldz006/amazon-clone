import 'package:flutter/material.dart';
import 'package:myapp/constants/theme.dart';
import 'package:myapp/screens/checkout_screen.dart';

import '../models/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> cartItems = [
    CartItem(product: Product(name: "Ürün 1", price: 10.0), quantity: 1),
    CartItem(product: Product(name: "Ürün 2", price: 20.0), quantity: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Sepet"),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage("https://placehold.co/150/png"),
            ),
            title: Text(item.product.name),
            subtitle: Text("${item.product.price} TL x ${item.quantity}"),
            trailing: Text("${item.product.price * item.quantity} TL"),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Toplam:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("${calculateTotal()} TL",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOutScreen(
                        cartItems: cartItems,
                      ),
                    ));
              },
              style: amazonTheme.elevatedButtonTheme.style,
              child: Text(
                "Ödeme Yap",
                style: amazonTheme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateTotal() {
    double total = 0;
    for (var item in cartItems) {
      total += item.product.price * item.quantity;
    }
    return total;
  }
}
