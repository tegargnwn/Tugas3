import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas2/pages/main_menu.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/bgg1.png"))),
      ),
      SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 44,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Change your password",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  color: const Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ])),
      Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 300),
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
          decoration: BoxDecoration(
              color: const Color(0xff38A1ED),
              borderRadius: BorderRadius.circular(17)),
          child: Text(
            "old password",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0xffFFFFFF)),
          ),
        ),
      ),
      Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 50),
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
          decoration: BoxDecoration(
              color: const Color(0xff38A1ED),
              borderRadius: BorderRadius.circular(17)),
          child: Text(
            "New Password",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0xffFFFFFF)),
          ),
        ),
      ),
      Center(
        child: Container(
          margin: const EdgeInsets.only(top: 430),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            "Create",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: const Color(0xff38A1ED),
            ),
          ),
        ),
      ),
      GestureDetector(),
      const Spacer(),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainMenuPage()));
        },
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 205),
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            decoration: BoxDecoration(
                color: const Color(0xff38A1ED),
                borderRadius: BorderRadius.circular(17)),
            child: Text(
              "Confirm password ",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: const Color(0xffFFFFFF)),
            ),
          ),
        ),
      ),
    ]));
  }
}
