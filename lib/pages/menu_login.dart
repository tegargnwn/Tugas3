import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas2/pages/main_menu.dart';
import 'package:tugas2/pages/main_menu2.dart';

class Menulogin extends StatelessWidget {
  const Menulogin({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/group4.png"))),
        ),
        SafeArea(
            child: SingleChildScrollView(
                child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffffffff)),
                    ),
                    Text(
                      'Login to acces your account',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffffffff)),
                    ),
                  ],
                ),
                Container(
                  width: 30,
                  height: 48,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/img_icon.png"))),
                ),
              ],
            )
          ]),
        ))),
        Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 300),
            padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 20),
            decoration: BoxDecoration(
                color: const Color(0xff38A1ED),
                borderRadius: BorderRadius.circular(17)),
            child: Text(
              "Email",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xffFFFFFF)),
            ),
          ),
        ),
        GestureDetector(),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
            decoration: BoxDecoration(
                color: const Color(0xff38A1ED),
                borderRadius: BorderRadius.circular(17)),
            child: Text(
              "Password",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xffFFFFFF)),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Password()));
          },
        ),
        GestureDetector(),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 300),
            padding: const EdgeInsets.symmetric(horizontal: 105, vertical: 20),
            decoration: BoxDecoration(
                color: const Color(0xff38A1ED),
                borderRadius: BorderRadius.circular(17)),
            child: Text(
              "Masuk",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xffFFFFFF)),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainMenuPage()));
          },
        ),
      ]),
    );
  }
}
