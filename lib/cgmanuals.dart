import 'package:indigenousnutrition/appbarmodified.dart';
import 'package:indigenousnutrition/pages/libraryscreen2/libraryscreen2.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

final pdfController = PdfController(
  document: PdfDocument.openAsset('assets/cgmanuals.pdf'),
);

class cgmanuals extends StatefulWidget {
  const cgmanuals({Key? key}) : super(key: key);

  @override
  _cgmanuals createState() => _cgmanuals();
}

class _cgmanuals extends State<cgmanuals> {
  final clearfield = TextEditingController();
  late int a;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PopScope(
        onPopInvoked: (result) async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Libraryscreen2()));
          return;
        },
        child: MaterialApp(
            home: Scaffold(
          body: Stack(
            children: [
              Center(
                  child: PdfView(
                controller: pdfController,
              )),
              const Positioned(
                  top: 70,
                  left: 10,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [])),
              appbarpdf(
                  width,
                  SizedBox(
                      width: 150,
                      child: TextField(
                        showCursor: false,
                        controller: clearfield,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          a = int.parse(value);
                          //Do something with the user input.
                        },
                        obscureText: false,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            iconColor: Colors.grey,
                            border: InputBorder.none,
                            hintText: "Page number",
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            )),
                      )),
                  ElevatedButton(
                    child: const Text("Go to"),
                    onPressed: () {
                      setState(() {
                        clearfield.clear();
                        pdfController.animateToPage(a,
                            duration: const Duration(seconds: 1),
                            curve: Curves.linear);
                      });
                    },
                  ),
                  blank())
            ],
          ),
        )));
  }
}
