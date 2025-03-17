import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import 'package:saferide_app_ui_3710154493/screens/safe_ride_screen.dart';
import '../widgets/product_card.dart';
import '../widgets/navigation_icon_button.dart'; 
import 'profile_screen.dart'; 

class MensSelectionScreen extends StatelessWidget {
  const MensSelectionScreen({super.key});

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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.chevron_left,
                          color: Color(0xFF3B82F6),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Mens Selection',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: ListView(
                      children: const [
                        ProductCard(
                          imageUrl: 'https://www.dopesnow.com/images/H1303_01_Bx9i7eQ.jpg?w=525&dpr=2',
                          name: 'Blizzard Snowboard Jacket',
                          price: 199.00,
                          description: 'Storm-proof hood with front and rear drawstring adjustment for the perfect fit',
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl: 'https://www.dopesnow.com/images/H3111_detail_03_oimZkZN.jpg?w=256&dpr=2',
                          name: 'Dope Sight Ski Goggles',
                          price: 99.00,
                          description: 'Designed to work seamlessly with all major helmets brands.',
    
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl: 'https://www.dopesnow.com/images/H0862_01_1UVjRRA.jpg?w=525&dpr=2',
                          name: 'Iconic Snowboard Pants Khaki',
                          price: 44.99,
                          description: 'Non-Slip cuff with lace hook for secure snow protection',
                       
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl: 'https://www.dopesnow.com/images/H2528_01_PMVNlE4.jpg?w=358&dpr=2',
                          name: 'Snowboard Helmet Mips',
                          price: 59.99,
                          description: 'An integrated visor simplifies goggle wear and offers terrain-defining clarity.',
                       
                        ),
                        SizedBox(height: 24),
                        ProductCard(
                          imageUrl: 'https://www.burton.com/static/product/W24/20317200001_2.png?impolicy=bglt&imwidth=580',
                          name: 'Burton Snowboard Boots',
                          price: 101.98,
                          description: 'This low-profile and lightweight underfoot shield reflects heat back to the feet.',
                       
                        ),
                        SizedBox(height: 80),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                    NavigationIconButton(
                      icon: Icons.person,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                    ),
                    NavigationIconButton(
                      icon: Icons.home,
                      onTap: () {
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
