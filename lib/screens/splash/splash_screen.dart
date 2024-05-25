import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/recipe_home/recipe_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RecipeHomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const NetworkImage(
              'https://media.istockphoto.com/id/941858854/photo/herbs-and-spices-for-cooking-on-dark-background.webp?b=1&s=170667a&w=0&k=20&c=6SuZ9cUx6Km_dPWDORuY62_Bk_uj6UFUY-J2H7IC_Z8='),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.srcATop),
        ),
      ),
      child: const Center(
        child: Text(
          "Food Recipe\nApp",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
