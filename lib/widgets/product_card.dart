import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class ProductCard extends StatefulWidget {
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
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  String selectedSize = 'M'; // Default size selection

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
                    widget.imageUrl,
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
                      widget.name,
                      style: const TextStyle(
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
          if (widget.description != null) ...[
            Text(
              widget.description!,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF9CA3AF),
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
                'Price: \$${widget.price.toInt()}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),

              // Size selection dropdown
              Row(
                children: [
                  const Text(
                    'Size:',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  DropdownButton<String>(
                    value: selectedSize,
                    dropdownColor: const Color(0xFF2A2C36),
                    style: const TextStyle(color: Colors.white),
                    underline: Container(), // Remove default underline
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                    items: ['S', 'M', 'L'].map((String size) {
                      return DropdownMenuItem<String>(
                        value: size,
                        child: Text(size),
                      );
                    }).toList(),
                    onChanged: (String? newSize) {
                      if (newSize != null) {
                        setState(() {
                          selectedSize = newSize;
                        });
                      }
                    },
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
                  'name': widget.name,
                  'price': widget.price.toInt(),
                  'size': selectedSize, // Include selected size in cart
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${widget.name} ($selectedSize) added to cart!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF38BDF8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              child: const Text(
                'Add to cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

