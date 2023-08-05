import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileutp/maroon.dart';
import 'package:mobileutp/screens/favfood_screen.dart';
import 'hobby_body_screen.dart';

class HobbyScreen extends StatelessWidget {
  // stateless fungsi yang tidak membutuhkan perubahan state atau keadaan
  const HobbyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Hobby',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.sports_martial_arts)),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const FavfoodScreen();
                    }
                  )
                );
              }, 
              icon: const Icon(Icons.food_bank)),
          ],
          centerTitle: false,
          backgroundColor: const Color(0xff02474C),
          elevation: 20.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context){
                return const ApiMaroon();
              }
            )
          );
        },
        backgroundColor: const Color(0xff9D0A0B),
        child: const Text(
          'API Maroon',
          textAlign: TextAlign.center, 
          style: TextStyle(fontSize: 10)
        )),
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(child: HobbyBodyScreen())
      );
  }
}