import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/views/Home_screen.dart';

class splish_Screen extends StatefulWidget {
  const splish_Screen({super.key});

  @override
  State<splish_Screen> createState() => _splish_ScreenState();
}

class _splish_ScreenState extends State<splish_Screen> {
  void initState() {
    super.initState();
    // Simulate a splash screen delay using a Future.delayed
    Future.delayed(const Duration(seconds: 6), () {
      // After the delay, navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home_screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.asset('assets/news.json',
          width: 250,
          height: 250,
          fit: BoxFit.cover,
          animate: true,),
      ),

    );
  }
}
