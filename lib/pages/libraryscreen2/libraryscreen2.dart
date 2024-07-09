import 'package:indigenousnutrition/cgcounceling.dart';
import 'package:indigenousnutrition/cgmanuals.dart';
import 'package:flutter/material.dart';
import '../../ui/export.dart';

class Libraryscreen2 extends StatefulWidget {
  const Libraryscreen2({Key? key}) : super(key: key);

  @override
  _Libraryscreen2State createState() => _Libraryscreen2State();
}

class _Libraryscreen2State extends State<Libraryscreen2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PopScope(
        onPopInvoked: (result) async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Homescreen2()));
          return;
        },
        child: MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 70,
                  leading: null,
                  title: const Text("Library",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: FvColors.textview104FontColor,
                          wordSpacing: 1.0)),
                  backgroundColor: const Color.fromRGBO(195, 213, 175, 20),
                ),
                body: SafeArea(
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
//
// Scrolling container with all selections
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Stack(children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: width, height: 1),
//
// Content
                                const Text(
                                  "Library",
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: FvColors.textview59FontColor,
                                      wordSpacing: 1.0),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),

//-- Component Longbutton_Button_41 --//
                                SizedBox(
                                    width: 314,
                                    height: 70,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor:
                                            FvColors.button43Background,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Contactsscreen3()));
                                      },
                                      child: const Text('Contacts',
                                          overflow: TextOverflow.visible,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: FvColors.button44FontColor,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
//-- Component Frame_Button_43 --//
                                SizedBox(
                                    width: 314,
                                    height: 70,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor:
                                            FvColors.button43Background,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const cgmanuals()));
                                      },
                                      child: const Text('CG Manual',
                                          overflow: TextOverflow.visible,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: FvColors.button44FontColor,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
//-- Component Longbutton_Button_44 --//
                                SizedBox(
                                    width: 314,
                                    height: 70,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor:
                                            FvColors.button60Background,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const cgcounseling()));
                                      },
                                      child: const Text('CG Counselling Cards',
                                          overflow: TextOverflow.visible,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: FvColors.button44FontColor,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    )),
// End of Content
//
                                SizedBox(width: width, height: 10),
                              ],
                            ),
                          ]),
                        ),
                      ),
//
//Unscrolling capsule
                    ])))));

// End of capsule
//
  }
}
