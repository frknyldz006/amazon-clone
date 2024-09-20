import 'package:flutter/material.dart';
import 'package:myapp/constants/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800], // Amazon mavisi
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Hamburger menü işlevi
          },
        ),
        centerTitle: true,
        title: Image.asset('assets/amazon-logo.png',height: 60,), // Logo resmi
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://placehold.co/150/png'), // Profil resmi
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Arama çubuğu, koleksiyonlar, popüler ürünler ve banner buraya gelecek
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Amazon.in',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCategoryButton('Mobiles', Icons.phone_android),
                  _buildCategoryButton('Fashion', Icons.local_mall),
                  _buildCategoryButton('Home', Icons.home),
                  _buildCategoryButton('Electronics', Icons.computer),
                  _buildCategoryButton('Toys', Icons.toys),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 250, // Kart yüksekliği
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Ürün sayısı (örnek)
                itemBuilder: (context, index) {
                  return _buildProductCard();
                },
              ),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.network(
                        'https://placehold.co/150/png'), // Banner resmi
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MacBook Pro',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            '\$1,999.99',
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () {},
                            style: amazonTheme.elevatedButtonTheme.style,
                            child: Text('Shop Now',style: amazonTheme.textTheme.labelLarge,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange, // Aktif ikon rengi
        onTap: _onItemTapped,
      ),
    );
  }
  //

  Widget _buildCategoryButton(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(title),
        ],
      ),
    );
  }

  // Ürün kartı oluşturma fonksiyonu
  Widget _buildProductCard() {
    return Card(
      child: SizedBox(
        width: 150, // Kart genişliği
        child: Column(
          children: [
            Image.network('https://placehold.co/150/png'), // Ürün resmi
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ürün Adı',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('\$19.99'), // Ürün fiyatı
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
