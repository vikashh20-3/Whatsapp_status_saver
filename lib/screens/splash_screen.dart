import 'package:flutter/material.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Call the _navigateToNextScreen function after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      _navigateToNextScreen(context);
    });
  }

  void _navigateToNextScreen(BuildContext context) {
    // Replace 'NextScreen()' with the screen you want to navigate to
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: FlutterLogo()),
    );
  }
}
