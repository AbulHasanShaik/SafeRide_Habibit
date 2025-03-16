import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2C3444),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavIcon(Icons.person),
          _buildNavIcon(Icons.home),
          _buildNavIcon(Icons.shopping_cart),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Icon(
        icon,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}
