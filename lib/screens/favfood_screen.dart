import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileutp/screens/favfood_body_screen.dart';
import 'package:mobileutp/student.dart';

class FavfoodScreen extends StatelessWidget {
  const FavfoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'FavFood',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              }, 
              icon: const Icon(Icons.sports_martial_arts)),
            IconButton(
              onPressed: () {
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
                return const ApiStudent();
              }
            )
          );
        },
        backgroundColor: const Color(0xffe65100),
        child: const Text(
          'API Student',
          textAlign: TextAlign.center, 
          style: TextStyle(fontSize: 10)
        )),
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(child: FavfoodBodyScreen())
      );
  }
}
