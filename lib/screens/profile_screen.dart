import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileutp/screens/favfood_screen.dart';
import 'package:mobileutp/screens/hobby_screen.dart';
import 'package:mobileutp/screens/profile_body_screen.dart';

class ProfileScreen extends StatefulWidget {
  //stateful fungsi yang membutuhkan perubahan state atau keadaan
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // visible (bisa terlihat) : appbar, icon, button, dll
          title: Text(
            'Profil',
            style: GoogleFonts.poppins(
              color: Colors.white, 
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: const Icon(Icons.person),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const HobbyScreen();
                    }
                  )
                );
              }, 
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
          backgroundColor: const Color(0xff02474c),
          elevation: 2.0,
        ),
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(child: ProfileBodyScreen())
      ),
      onWillPop: () => _onBackButtonPressed(context));
  }
  
  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('Really ??'),
          content: const Text('Do you want to close the app??'),
          actions: <Widget> [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No')
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes')
            )
          ],
        );
      }
    );
    return exitApp;
  }
}
