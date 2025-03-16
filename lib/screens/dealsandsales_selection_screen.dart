import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/safe_ride_screen.dart';
import '../widgets/product_card.dart';
import '../widgets/navigation_icon_button.dart'; // Import the NavigationIconButton
import 'profile_screen.dart'; // Import the ProfileScreen

class DealsandSalesSelectionScreen extends StatelessWidget {
  const DealsandSalesSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1B26),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with back button
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context); // Go back to the previous screen
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: const Color(0xFF3B82F6),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Deals & Sales',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Product list
                  Expanded(
                    child: ListView(
                      children: [
                        ProductCard(
                          imageUrl:
                              'https://placehold.co/800x400/2a4365/2a4365',
                          price: 250,
                          description: null,
                        ),
                        const SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://placehold.co/800x400/2a4365/2a4365',
                          price: 250,
                          description: null,
                        ),
                        const SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://placehold.co/800x400/2a4365/2a4365',
                          price: 250,
                          description: null,
                        ),
                        const SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://placehold.co/800x400/2a4365/2a4365',
                          price: 250,
                          description: null,
                        ),
                        const SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://placehold.co/800x400/2a4365/2a4365',
                          price: 250,
                          description:
                              'This board is a cool board that has blue and green tree that blah blag more description',
                        ),
                        // Add extra space at the bottom for the navigation bar
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Bottom navigation
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(24.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF1A1B26),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFF3A3D42),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Person Icon Button
                    NavigationIconButton(
                      icon: Icons.person,
                      onTap: () {
                        // Navigate to ProfileScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                    ),
                    // Home Icon Button
                    NavigationIconButton(
                      icon: Icons.home,
                      onTap: () {
                        // Navigate to SaferideScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SafeRideScreen(),
                          ),
                        );
                      },
                    ),
                    NavigationIconButton(
                      icon: Icons.shopping_cart,
                      onTap: () {
                        // Navigate to CartSelectionScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartSelectionScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
