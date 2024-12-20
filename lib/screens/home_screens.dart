import 'package:flutter/material.dart';
import 'package:carselling/theme.dart';
import 'package:carselling/screens/product_detail_screen.dart';
import 'package:carselling/models/product.dart'; // Import model Product

class HomeScreens extends StatelessWidget {
  // Daftar produk menggunakan model Product
  final List<Product> products = [
    Product(
      name: 'Tesla Model S',
      description: 'Electric luxury sedan with top performance.',
      price: '\$89,990',
      image: 'assets/mobil1.png',
    ),
    Product(
      name: 'Toyota Camry',
      description: 'Reliable and efficient sedan for daily use.',
      price: '\$24,970',
      image: 'assets/mobil1.png',
    ),
    Product(
      name: 'Tesla Model X',
      description: 'A premium electric SUV with plenty of space.',
      price: '\$120,000',
      image: 'assets/mobil1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cars Selling App',
          style: poppinsTextStyle.copyWith(
            color: Color(0xffEA0B25), // Warna merah
            fontWeight: FontWeight.bold, // Bold
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          product.image,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product.name,
                        style: poppinsTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        product.description,
                        style: poppinsTextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product.price,
                        style: poppinsTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Tombol View Details
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigasi ke halaman detail
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailScreen(product: product),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'View Details',
                            style: poppinsTextStyle.copyWith(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
