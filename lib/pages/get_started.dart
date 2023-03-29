// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas2/pages/menu_login.dart';

class get_started extends StatelessWidget {
  const get_started({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img_started.png"))),
        ),
        Container(
          height: 485,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.0),
              ])),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Center(
                child: Text(
                  'WELCOME',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xff0094DA)),
                ),
              ),
              Center(
                child: Text(
                  'Hallo Doctor',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xffffffff)),
                ),
              ),
              Center(
                child: Text(
                  'Solutions from your health',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff)),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menulogin()),
                  );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 72),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(18)),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
