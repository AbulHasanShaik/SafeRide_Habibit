import 'package:flutter/material.dart';
import 'package:saferide_app_ui_3710154493/screens/cart_selection_screen.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/navigation_icon_button.dart';
import 'safe_ride_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController =
      TextEditingController(text: "Emily Thompson");
  final TextEditingController _genderController =
      TextEditingController(text: "Female");
  final TextEditingController _emailController =
      TextEditingController(text: "emily@example.com");
  final TextEditingController _dobController =
      TextEditingController(text: "01/01/1990");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16.0),
              color: const Color(0xFF1C1F2E),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C3444),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),

            // Profile content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),

                      // Profile picture
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Image.asset(
                          'assets/icons/EmilyThompson.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Reward points card
                      _buildProfileInfoCard(
                          Icons.card_giftcard, "Reward Points: 10204", false),

                      // Editable Name
                      _buildEditableField(Icons.sentiment_satisfied_alt, "Name",
                          _nameController),

                      // Editable Gender
                      _buildEditableField(
                          Icons.person, "Gender", _genderController),

                      // Editable Email
                      _buildEditableField(
                          Icons.mail, "Email", _emailController),

                      // Editable Date of Birth
                      _buildEditableField(
                          Icons.cake, "Date of Birth", _dobController),
                    ],
                  ),
                ),
              ),
            ),

            // Bottom navigation
            Container(
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
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    ),
                  ),
                  NavigationIconButton(
                    icon: Icons.home,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SafeRideScreen()),
                    ),
                  ),
                  NavigationIconButton(
                    icon: Icons.shopping_cart,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartSelectionScreen()),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfoCard(IconData icon, String title, bool isEditable) {
    return Card(
      color: const Color(0xFF2C3444),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildEditableField(
      IconData icon, String label, TextEditingController controller) {
    return Card(
      color: const Color(0xFF2C3444),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: TextField(
          controller: controller,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
