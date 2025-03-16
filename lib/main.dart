import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Import the LoginScreen

void main() {
  runApp(const SafeRideApp());
}

class SafeRideApp extends StatelessWidget {
  const SafeRideApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeRide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2B8BE9),
        scaffoldBackgroundColor: const Color(0xFF1B1E23),
        fontFamily: 'Roboto',
      ),
      home: const LoginScreen(), // Set LoginScreen as the first screen
    );
  }
}
