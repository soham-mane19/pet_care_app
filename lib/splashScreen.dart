import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState(){
super.initState();

Timer( const Duration(seconds: 3),(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return  const LoginScreen();
    },));
});

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/splashicon.png"),
              const SizedBox(
                height: 10,
              ),
              Text(
                "PetGuardian",
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
              Text(
                " “Your Pets' Lifelong Protector\"",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
