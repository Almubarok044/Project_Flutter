// ignore_for_file: unused_label

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profileLightGrey = GoogleFonts.poppins(
      fontSize: 14.0,
      color: const Color(0xff8B8B8B),
    );
    var pfTextGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff484848),
    );
    var pfTextLightGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: const Color(0x80484848),
    );
    var pfTextCardLight = GoogleFonts.poppins(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
    var pfTextCardBold = GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        // invisible (tak terlihat) : column, row, center, padding, builder, dll
        children: [
          const SizedBox(height: 10),
          Container(
            // invisible dan visible (bisa keduanya) tergantung kebutuhan
              padding: const EdgeInsets.all(1.0),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff02474c),
                    blurRadius: 10.0,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(60.0),
                ),
              ),
              child: const CircleAvatar(
                backgroundColor: Color(0xff02474c),
                radius: 60.3,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/gondez_kai.png'),
                ),
              )),
          const SizedBox(height: 25),
          Text(
            'Mohamad Almubarok',
            style: GoogleFonts.poppins(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: const Color(0xff484848),
            ),
          ),
          Text(
            'almubarok@student.unpak.ac.id',
            style: profileLightGrey,
          ),
          Text(
            '065120044',
            style: profileLightGrey,
          ),
          const SizedBox(height: 25),
          // Card for brief info
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff02474c),
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NPM', style: pfTextCardLight),
                    const Spacer(),
                    Text('065120044', style: pfTextCardBold),
                    const SizedBox(width: 9.0),
                    const Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Status Keaktifan', style: pfTextCardLight),
                    const Spacer(),
                    Text('Aktif', style: pfTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Program Studi', style: pfTextCardLight),
                    const Spacer(),
                    Text('Ilmu Komputer', style: pfTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Jenjang Pendidikan', style: pfTextCardLight),
                    const Spacer(),
                    Text('S1', style: pfTextCardBold),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Divider(color: Color(0xff02474c)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Nama Lengkap', style: pfTextGrey),
                const Spacer(),
                Text('Mohamad Almubarok', style: pfTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color(0xff02474c)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Panggilan', style: pfTextGrey),
                const Spacer(),
                Text('Barok', style: pfTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color(0xff02474c)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // crossAxisAlignment pada column menyusun widget dari kiri ke kanan/horizontal 
                  // sedangkan mainAxisAlignment menyusun widget dari atas ke bawah/vertical
                  children: [
                    Text('Alamat Rumah', style: pfTextGrey),
                    const SizedBox(height: 6.0),
                    Text(
                      'Lingkungan 03 Citatah Kel.Ciriung Kec.Cibinong',
                      style: pfTextLightGrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(color: Color(0xff02474c)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Kartu Mahasiswa', style: pfTextGrey),
                const Spacer(),
                const Icon(Icons.badge),
              ],
            ),
          ),
          const Divider(color: Color(0xff02474c))
        ],
      ),
    );
  }
}
