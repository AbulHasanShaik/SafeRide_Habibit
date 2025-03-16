import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final String? description;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F2937),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image with brand label
          Container(
            height: 200,
            width: double.infinity,
            clipBehavior: Clip.hardEdge, // Fix overflow issue
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                // Product image
                Positioned.fill(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                // Brand label
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: const Color(0xFF38BDF8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.5, horizontal: 1),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Description (if provided)
          if (description != null) ...[
            Text(
              description!,
              style: TextStyle(
                fontSize: 14,
                color: const Color(0xFF9CA3AF),
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Price and size selection
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price
              Text(
                'Price: \$${price.toInt()}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),

              // Size selection
              Row(
                children: [
                  Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF4B5563),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Select size',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Add to cart button
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                 Provider.of<CartProvider>(context, listen: false).addItem({
                  'name': name,
                  'price': price.toInt(), // Example price
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Item added to cart!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF38BDF8), // Fix primary issue
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              child: Text(
                'Add to cart',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
