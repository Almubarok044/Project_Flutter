import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavfoodBodyScreen extends StatelessWidget {
  const FavfoodBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ffTextCardLight =
          GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Colors.white);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Text('Mie Ayam',
            style: GoogleFonts.poppins(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xff02474C))),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          child: Image.asset('assets/mie_ayam.png'),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xff02474C),
              borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(color: Colors.white),
              Text(
                'Mi ayam adalah hidangan khas Indonesia yang terbuat dari mi gandum yang dibumbui dengan daging ayam.',
                style: ffTextCardLight,
              ),
              const Divider(color: Colors.white),
              Text(
                  'Makanan ini dibumbui dengan kecap, kuah kaldu ayam dan rempah-rempah (cengkeh, lada putih, jahe, dan ketumbar).',
                  style: ffTextCardLight),
              const Divider(color: Colors.white),
              Text(
                  'Mi ayam sering dijual sebagai hidangan jalanan oleh pedagang kaki lima dengan gerobak dan biasanya berkeliling disekitar perumahan warga. Mi ayam juga merupakan hidangan populer yang disajikan di warung makan kecil, hingga rumah makan besar.',
                  style: ffTextCardLight),
              const Divider(color: Colors.white),
            ],
          ),
        ),
      ]),
    );
  }
}
