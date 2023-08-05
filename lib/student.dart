import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileutp/models/student_model.dart';
import 'package:mobileutp/services/student_service.dart';

class ApiStudent extends StatefulWidget {
  const ApiStudent({super.key});

  @override
  State<ApiStudent> createState() => _PageStudentState();
}

class _PageStudentState extends State<ApiStudent> {
  List<StudentModel> listStudent = [];

  StudentService studentservice = StudentService();

  getData() async {
    listStudent = await studentservice.getStudent();
    setState(() {});
  }

  Future<void> _showDialog(BuildContext context, StudentModel? listStudent,
      {bool delete = false}) {
    final npmController =
        TextEditingController(text: listStudent != null ? listStudent.npm : "");

    final nameController = TextEditingController(
        text: listStudent != null ? listStudent.name : "");

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return delete
            ? AlertDialog(
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Batal'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Hapus'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Future.delayed(const Duration(milliseconds: 500),
                          () => Navigator.of(context).pop());
                    },
                  ),
                ],
              )
            : AlertDialog(
                title: listStudent != null
                    ? const Text('Ubah data')
                    : const Text('Tambah data'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: npmController,
                        decoration: const InputDecoration(
                          labelText: 'Npm',
                        ),
                      ),
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Batal'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Simpan'),
                    onPressed: () async {
                      // ignore: unused_local_variable
                      bool res = await studentservice.postData(
                          npmController.text,
                          nameController.text);
                          npmController.clear();
                          nameController.clear();

                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Future.delayed(const Duration(milliseconds: 500),
                          () => Navigator.of(context).pop());
                    },
                  ),
                ],
              );
      },
    );
  }

  final snackBar = const SnackBar(
    content: Text('Yay! Berhasil~'),
  );
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
          'API Student',
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
        backgroundColor: const Color(0xffe65100)
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xffe65100),
              Color.fromRGBO(0, 0, 0, 1),
            ],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter)),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Text(listStudent[index].id.toString(),
                    style: GoogleFonts.lora(color: Colors.white)),
              ),
              title: Text(listStudent[index].name,
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w500, fontSize: 14)),
              subtitle: Text(listStudent[index].npm),
              textColor: Colors.white,
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: listStudent.length,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: () => _showDialog(context, null),
        tooltip: 'Tambah Item',
        label: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add),
            Text("Tambah"),
          ],
        ),
      ),
    );
  }
}
