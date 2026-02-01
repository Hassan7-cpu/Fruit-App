import 'package:flutter/material.dart';
import 'package:fruitapp/appcolor.dart';
import 'package:fruitapp/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<int> animation;

  final String text = 'Grabber';

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    animation = IntTween(begin: 0, end: text.length).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const Homescreen()),
        );
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          text.substring(0, animation.value),
          style: GoogleFonts.pacifico(
            fontSize: 48,
            fontWeight: FontWeight.w400,
            color: Appcolor.primaryColor,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
