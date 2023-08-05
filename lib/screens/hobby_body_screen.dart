// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HobbyBodyScreen extends StatelessWidget {
  const HobbyBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var HbTextCardLight =
          GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Colors.white);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
        Text('Calisthenics Exercises',
            style: GoogleFonts.poppins(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xff02474C))),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          child: Image.asset('assets/calisthenics.png'),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xff02474C),
              borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              const Divider(color: Colors.white),
              Text(
                'Calisthenics berasal dari Yunani Kuno, jenis latihan ini menggunakan berat badan seseorang dengan sedikit peralatan.',
                style: HbTextCardLight,
              ),
              const Divider(color: Colors.white),
              Text(
                  'Latihan melibatkan gerakan yang menggunakan kelompok otot besar seperti Chest, Biceps, Triceps, Shoulders dan lain - lain. Orang biasanya melakukan latihan ini dengan kecepatan sedang. Mereka membantu meningkatkan koordinasi, fleksibilitas, dan kekuatan.',
                  style: HbTextCardLight),
              const Divider(color: Colors.white),
              Text(
                  'Daftar gerakan yang bisa dilakukan antara lain : Squats, Push Ups, Pull Ups, Plank, Dips, Crunches, Jump Rope, dan lain - lain.',
                  style: HbTextCardLight),
              const Divider(color: Colors.white)
            ],
          ),
        ),
      ]),
    );
  }
}
