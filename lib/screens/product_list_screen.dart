import 'package:flutter/material.dart';
import 'package:carselling/theme.dart';
import 'package:carselling/models/product.dart';
import 'package:carselling/screens/product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final bool isAdmin;

  ProductListScreen({required this.isAdmin});

  // Ubah List<Map<String, String>> menjadi List<Product>
  final List<Product> products = [
    {
      "name": "Tesla Model S",
      "description": "Electric luxury sedan.",
      "price": "\$89,990",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Toyota Camry",
      "description": "Reliable and efficient sedan.",
      "price": "\$24,970",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Tesla Model S",
      "description": "Electric luxury sedan.",
      "price": "\$89,990",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Toyota Camry",
      "description": "Reliable and efficient sedan.",
      "price": "\$24,970",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Tesla Model S",
      "description": "Electric luxury sedan.",
      "price": "\$89,990",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Toyota Camry",
      "description": "Reliable and efficient sedan.",
      "price": "\$24,970",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Tesla Model S",
      "description": "Electric luxury sedan.",
      "price": "\$89,990",
      "image": "assets/mobil1.png"
    },
    {
      "name": "Toyota Camry",
      "description": "Reliable and efficient sedan.",
      "price": "\$24,970",
      "image": "assets/mobil1.png"
    },
  ].map((product) {
    return Product(
      name: product['name']!,
      description: product['description']!,
      price: product['price']!,
      image: product['image']!,
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product List',
          style: poppinsTextStyle.copyWith(
            color: Color(0xffEA0B25),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          product.image,
                          height: 85,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product.name,
                        style: poppinsTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.description,
                        style: poppinsTextStyle.copyWith(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product.price,
                        style: poppinsTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 160,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
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
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
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
