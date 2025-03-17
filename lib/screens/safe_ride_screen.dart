import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/accessories_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/boys_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/dealsandsales_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/girls_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/womens_selection_screen.dart';
import '../widgets/category_button.dart';
import '../widgets/navigation_icon_button.dart';
import 'profile_screen.dart'; // Import the ProfileScreen
import 'mens_selection_screen.dart'; // Import the MensSelectionScreen

class SafeRideScreen extends StatelessWidget {
  const SafeRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   child: Container(
              //     width: 40,
              //     height: 40,
              //     decoration: BoxDecoration(
              //       color: const Color(0xFF2B8BE9),
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     child: const Center(
              //       child: Icon(
              //         Icons.chevron_left,
              //         color: Colors.white,
              //         size: 24,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 16),

              // Main content card
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2D32),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      // Logo and brand name
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.snowboarding,
                            color: Color(0xFF2B8BE9),
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'SAFERIDE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Main image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/icons/homepage_image.png',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Category grid
                      Expanded(
                        child: Column(
                          children: [
                            // First row of categories
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 3,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  CategoryButton(
                                    label: 'Mens',
                                    onTap: () {
                                      // Navigate to MensSelectionScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MensSelectionScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  CategoryButton(
                                    label: 'Womens',
                                    onTap: () {
                                      // Navigate to WomensSelectionScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const WomensSelectionScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  CategoryButton(
                                    label: 'Boys',
                                    onTap: () {
                                      // Navigate to BoyssSelectionScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const BoysSelectionScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  CategoryButton(
                                    label: 'Girl',
                                    onTap: () {
                                      // Navigate to GirlsSelectionScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const GirlsSelectionScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),

                            // Sales and Accessories buttons
                            const SizedBox(height: 16),
                            CategoryButton(
                              label: 'Sales and Deals',
                              onTap: () {
                                // Navigate to DealsandSalesSelectionScreen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DealsandSalesSelectionScreen(),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 16),
                            CategoryButton(
                              label: 'Accessories',
                              onTap: () {
                                // Navigate to AccessoriesSelectionScreen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AccessoriesSelectionScreen(),
                                  ),
                                );
                              },
                            ),
                            // Footer navigation
                            const SizedBox(height: 32),
                            Container(
                              padding: const EdgeInsets.only(top: 16),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFF3A3D42),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // Person Icon Button
                                  NavigationIconButton(
                                    icon: Icons.person,
                                    onTap: () {
                                      // Navigate to ProfileScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  const NavigationIconButton(icon: Icons.home),
                                  NavigationIconButton(
                                    icon: Icons.shopping_cart,
                                    onTap: () {
                                      // Navigate to ProfileScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CartSelectionScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
