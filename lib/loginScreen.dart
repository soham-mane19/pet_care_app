import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/dashBoard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text("Login",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(245, 146, 69, 1))),
                const SizedBox(
                  height: 8,
                ),
                Image.asset("assets/BrandmarkLogo.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 0.8))),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 38,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'PetGuardian@gmail.com',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.8)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromRGBO(250, 200, 162, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromRGBO(250, 200, 162, 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Label",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 0.8))),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 38,
                  width: 350,
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.8)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromRGBO(250, 200, 162, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromRGBO(250, 200, 162, 1))),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Forgot Password ?",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(31, 32, 41, 1))),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text("Click here",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(31, 32, 41, 1))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(245, 146, 69, 1)),
                      minimumSize:
                          const MaterialStatePropertyAll(Size(350, 38)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return const Dashboard();
                    }));
                  },
                  child: Text("LOGIN",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(245, 146, 69, 1)))),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(245, 146, 69, 1)),
                      minimumSize:
                          const MaterialStatePropertyAll(Size(350, 38)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {},
                  child: Text("LOGIN WITH EMAIL",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1))),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(245, 146, 69, 1)),
                      minimumSize:
                          const MaterialStatePropertyAll(Size(350, 38)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {},
                  child: Text("LOGIN WITH FACEBOOK",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1))),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text("By continue you agree to our",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(31, 32, 41, 1))),
                ),
                Center(
                  child: Text("Terms & Privacy Policy",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(31, 32, 41, 1))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
