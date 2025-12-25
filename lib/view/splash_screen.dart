import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar_grocery/view/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void navigateToWelcomeScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return WelcomeScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToWelcomeScreen(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(83, 177, 117, 1),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/splash_screen_img.png'),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'nectar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                Text(
                  "online groceriet",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 5.5,
                    textBaseline: TextBaseline.alphabetic,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
