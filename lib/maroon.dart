import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mobileutp/models/maroon_model.dart';
import 'package:mobileutp/services/maroon_service.dart';

class ApiMaroon extends StatefulWidget {
  const ApiMaroon({super.key});

  @override
  State<ApiMaroon> createState() => _PageMaroonState();
}

class _PageMaroonState extends State<ApiMaroon> {
  List<MaroonModel> listMaroon = [];

  MaroonService maroonservice = MaroonService();

  getData() async {
    listMaroon = await maroonservice.getMaroon();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'API Maroon',
          style: GoogleFonts.lora(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xff9D0A0B),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xff9D0A0B),
              Color.fromRGBO(0, 0, 0, 1),
            ],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter)),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Text(listMaroon[index].id.toString(),
                    style: GoogleFonts.lora(color: Colors.white)),
              ),
              title: Text(listMaroon[index].name,
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w500, fontSize: 14)),
              subtitle: Text(listMaroon[index].message),
              textColor: Colors.white,
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: listMaroon.length,
        ),
      ),
    );
  }
}
