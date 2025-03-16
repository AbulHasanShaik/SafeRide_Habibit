import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart'; // Import the LoginScreen
import 'providers/cart_provider.dart'; // Import the CartProvider

void main() {
  runApp(const SafeRideApp());
}

class SafeRideApp extends StatelessWidget {
  const SafeRideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'SafeRide',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF2B8BE9),
          scaffoldBackgroundColor: const Color(0xFF1B1E23),
          fontFamily: 'Roboto',
        ),
        home: const LoginScreen(), // Set LoginScreen as the first screen
      ),
    );
  }
}
