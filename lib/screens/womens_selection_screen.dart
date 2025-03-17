import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/safe_ride_screen.dart';
import '../widgets/product_card.dart';
import '../widgets/navigation_icon_button.dart'; // Import the NavigationIconButton
import 'profile_screen.dart'; // Import the ProfileScreen

class WomensSelectionScreen extends StatelessWidget {
  const WomensSelectionScreen({super.key});

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
                        child: const Icon(
                          Icons.chevron_left,
                          color: Color(0xFF3B82F6),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Womens Selection',
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
                      children: const [
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H1350_01_JY6Acbu.jpg?w=525&dpr=2',
                          name: 'Jacket Women Violet',
                          price: 199,
                          description: 'Easy access pocket made specifically for phones with internal headphone cord outlet',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H2424_01_unaxC3l.jpg?w=525&dpr=2',
                          name: 'Snow Mittens Soft Pink',
                          price: 69,
                          description: 'The improved Ace mittens are designed for all-day comfort, balancing the use of water resistant and breathable materials for longterm performance.',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H2485_women_01_17hRyjd.jpg?w=525&dpr=2',
                          name: 'Cozy Facemask Green',
                          price: 19,
                          description: 'The Cozy Hood from Dope is a revolution in neck warmers. Made from our super soft 250gsm 100% recycled polyester fleece, this thing will keep you toasty all day long!',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H3009_01_1ZC1KpD.jpg?w=525&dpr=2',
                          name: 'Fleece Hoodie Women',
                          price: 50,
                          description: 'Most people think that the hoodie has reached its evolutionary peak. That it can’t get any better. But they just haven’t met the Cozy II yet. Made with our awesome 100% recycled polyester fleece',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H3190_01_JhADhrU.jpg?w=525&dpr=2',
                          name: 'Crest 14 Backpack Dune',
                          price: 109,
                          description:
                              'The Crest ski and snowboard bag is the ultimate companion for anyone looking to go further this season. With a compact 14L capacity, this backpack is ideal for single-day adventures and is packed with tech and features.',
                        ),
                        // Add extra space at the bottom for the navigation bar
                        SizedBox(height: 80),
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
