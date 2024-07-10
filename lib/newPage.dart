import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Express delivery'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Deepolie Street, 42',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Delivery'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Shop'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.grey[200],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              color: Colors.green[100],
              child: Center(
                child: Text(
                  'Level 2 in June\n8% on your favorite product\n1,300 bonuses',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Novelties of the week',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          ProductItem(
            name: 'Oranges',
            weight: '590 g',
            rating: 5.0,
            price: 12.00,
            imageUrl: 'assets/oranges.png',
          ),
          ProductItem(
            name: 'Red apples',
            weight: '350 g',
            rating: 4.9,
            price: 4.00,
            imageUrl: 'https://www.thefruitcompany.com/cdn/shop/products/cosmic-crisp-apple.jpg?v=1664807413',
          ),
          ProductItem(
            name: 'Oranges',
            weight: '890 g',
            rating: 5.0,
            price: 18.00,
            imageUrl: 'assets/oranges.png',
          ),
          // Add more ProductItem widgets as needed
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String weight;
  final double rating;
  final double price;
  final String imageUrl;

  ProductItem({
    required this.name,
    required this.weight,
    required this.rating,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final bool isNetworkImage = imageUrl.startsWith('http') || imageUrl.startsWith('https');

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: isNetworkImage ? Image.network(imageUrl) : Image.asset(imageUrl),
          title: Text(name),
          subtitle: Text('$weight\nRating: $rating'),
          trailing: Text('\$$price'),
        ),
      ),
    );
  }
}
