import 'package:flutter/material.dart';
import 'package:myapp/constants/theme.dart';

import '../models/product.dart';

class CheckOutScreen extends StatefulWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2692319601.
  final List<CartItem> cartItems;

  const CheckOutScreen({super.key, required this.cartItems});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Teslimat Adresi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Adresinizi Giriniz',
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ödeme Yöntemi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Ödeme Yöntemi Ekle veya Düzenle',
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Sipariş Özeti',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final item = widget.cartItems[index];
                  return ListTile(
                    title: Text(item.product.name),
                    subtitle:
                        Text("${item.product.price} TL x ${item.quantity}"),
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: amazonTheme.elevatedButtonTheme.style,
          child: Text(
            'Siparişi Tamamla',
            style: amazonTheme.textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
