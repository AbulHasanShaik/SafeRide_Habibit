import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/safe_ride_screen.dart';
import '../widgets/product_card.dart';
import '../widgets/navigation_icon_button.dart'; // Import the NavigationIconButton
import 'profile_screen.dart'; // Import the ProfileScreen

class BoysSelectionScreen extends StatelessWidget {
  const BoysSelectionScreen({super.key});

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
                        'Boys Selection',
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
                              'https://stauberbest.com/cdn/shop/files/MattePackageProfile7_700x.jpg?v=1699565562',
                          name: 'Summit Snowboard Package',
                          price: 200,
                          description: 'All-Mountain Style Snowboard Set – Lightweight Rig with a Medium Flex - Durable Gloss Finished Top-Sheet. Snowboard Shape -Twin Directional (Symmetric) Tip and Tail, Hybrid Profile (Camber Rocker Camber Profile',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://original.accentuate.io/6788492623941/1666133915825/blndrs_Punkster_Planet_Funk_snow_Lfstyl_internal%C2%A9_2289_1100x550.jpg?v=1666133915825',
                          name: 'Punkster Goggles',
                          price: 50,
                          description: 'These stylish youth snow goggles are tailor-made for anyone 9 to 14 years old. Scratch- and smudge-resistant lens coatings, three-layer hypoallergenic face foam',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl:
                              'https://scheels.scene7.com/is/image/Scheels/07235810694_F?wid=500&hei=500',
                          name: 'Freeride Graffiti Snowboard',
                          price: 39.99,
                          description: 'This graffiti snowboard offers a fun graphic design to show off as you shred the snow hill. Easily step into this board with the adjustable bindings that adjust to your foot size for the perfect fit',
                        ),
                        // SizedBox(height: 24),
                        // ProductCard(
                        //   imageUrl:
                        //       'https://placehold.co/800x400/2a4365/2a4365',
                        //   name: 'Product Name1',
                        //   price: 250,
                        //   description: null,
                        // ),
                        // SizedBox(height: 24),
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
