import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();

  // Shipping Information Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _zipController = TextEditingController();

  // Payment Information Controllers
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expirationDateController =
      TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF1A1B26),
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: const Color(0xFF3B82F6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // 🏠 SHIPPING INFORMATION SECTION
              const Text(
                "Shipping Information",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 10),
              _buildTextField(_nameController, "Full Name"),
              _buildTextField(_addressController, "Address"),
              _buildTextField(_cityController, "City"),
              _buildTextField(_zipController, "ZIP Code", isNumeric: true),

              const SizedBox(height: 20),

              // 💳 PAYMENT INFORMATION SECTION
              const Text(
                "Payment Information",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 10),
              _buildTextField(_cardNumberController, "Card Number",
                  isNumeric: true),
              _buildTextField(
                  _expirationDateController, "Expiration Date (MM/YY)"),
              _buildTextField(_cvvController, "CVV", isNumeric: true),

              const SizedBox(height: 20),

              // 🛒 CART SUMMARY
              const Text(
                "Order Summary",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Column(
                children: cart.cartItems.map((item) {
                  return ListTile(
                    title: Text(
                      item['description'] ?? 'Product',
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("\$${item['price']}",
                        style: const TextStyle(color: Colors.white70)),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20),

              // 💵 PAY NOW BUTTON
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Payment logic (simulation)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Payment Successful!'),
                      ),
                    );

                    // Clear cart after payment
                    cart.clearCart();
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 📝 Helper function to create input fields
  Widget _buildTextField(
    TextEditingController controller,
    String label, {
    bool isNumeric = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white70),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white38),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }
}
