import 'package:flutter/material.dart';

class NavigationIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const NavigationIconButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2D32),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: const Color(0xFF2B8BE9),
          size: 20,
        ),
      ),
    );
  }
}
