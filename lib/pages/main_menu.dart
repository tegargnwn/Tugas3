// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas2/pages/menu_login.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role, String rating) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffffffff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 183,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        img,
                        //"assets/img_doc1.png"
                      ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000)),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffB2B2B4)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 22,
                        height: 22,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/ic_Star.png"))),
                      ),
                      Text(
                        rating,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff008FD6)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xfffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 45),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,\ntegargnwn_',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff000000)),
                        ),
                        Text(
                          'Stay Healty With Our Spesialis Doctor',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffB2B2B4)),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/img_group1.png"))),
                    ),
                  ],
                ),
                doctorCard("assets/img_doc1.png", "dr. Mawar N.",
                    "Spesialis Paru-paru", "4.9"),
                doctorCard("assets/img_doc2.png", "dr. Zizah Ayuningsih.",
                    "Spesialis Alat Kelamin", "5.0")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
