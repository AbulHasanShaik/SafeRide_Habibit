import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/safe_ride_screen.dart';
import '../widgets/product_card.dart';
import '../widgets/navigation_icon_button.dart'; // Import the NavigationIconButton
import 'profile_screen.dart'; // Import the ProfileScreen

class GirlsSelectionScreen extends StatelessWidget {
  const GirlsSelectionScreen({super.key});

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
                        'Girls Selection',
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
                              'https://original.accentuate.io/6787208151109/1666121087948/blndrs_Lunar_Coral-Legacy_snow_Lfstyl_internal%C2%A9_001_1100x550.jpg?v=1666121087948',
                          name: 'Lunar goggles',
                          price: 49.99,
                          description: ' We’ve packed a wealth of performance into these powder pink snow goggles, including an OTG (over-the-glass) design to accommodate prescription eyewear and a dual-lens construction for superior anti-fog capability.',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H2533_01_7XenTKA.jpg?w=358&dpr=2',
                          name: 'Mirage Helmet',
                          price: 69.00,
                          description: 'Its lightweight design brings the latest safety innovations including Mips® and Zonal KOROYD® for enhanced energy absorption in the event of a crash',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://images.evo.com/imgp/700/253984/1108391/clone.jpg',
                          name: 'Salomon Lotus Snowboard',
                          price: 89.99,
                          description: 'The Salomon Lotus Snowboard is like the best teacher you ever had: it has a gentle, easygoing personality',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://www.dopesnow.com/images/H3107_01_he8tdpvg.jpg?w=358&dpr=2',
                          name: 'Sight Goggles',
                          price: 150,
                          description: 'The Sight is a super slick cylindrical goggle with lots of great tech to make your life on the mountain easier. Ride in comfort and style this season by fully customising your look. The Sight is here, and it’s ready for adventure',
                        ),
                        SizedBox(height: 24),
                        // ProductCard(
                        //   imageUrl:
                        //       'https://placehold.co/800x400/2a4365/2a4365',
                        //   name: 'Product Name1',
                        //   price: 250,
                        //   description:
                        //       'This board is a cool board that has blue and green tree that blah blag more description',
                        // ),
                        // // Add extra space at the bottom for the navigation bar
                        // SizedBox(height: 80),
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
