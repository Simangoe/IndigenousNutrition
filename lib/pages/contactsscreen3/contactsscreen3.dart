import 'package:indigenousnutrition/appbarmodified.dart';
import 'package:flutter/material.dart';
import '../../ui/export.dart';

class Contactsscreen3 extends StatefulWidget {
  const Contactsscreen3({Key? key}) : super(key: key);

  @override
  _Contactsscreen3State createState() => _Contactsscreen3State();
}

class _Contactsscreen3State extends State<Contactsscreen3> {
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
                        SizedBox(width: width, height: 150),
//
// Content
                        const Text(
                          "Contacts",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: FvColors.textview59FontColor,
                              wordSpacing: 1.0),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                            width: width,
                            child: const Text('''For more information:
 -Visit your nearest health centre''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ))),
                        const SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                            width: width,
                            child: const Text(
                                'Ministry of Health and Child Care -MoHCC',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ))),

                        SizedBox(
                            width: width,
                            child: const Text('''National Nutrition Unit
 Office 3-56
 Kaguvi Building
 Corner Simon V Muzenda and Central Avenue
 0242792454''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ))),
                        const SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                            width: width,
                            child: const Text(
                                '-Community Technology Development Organisation CTDO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ))),

                        SizedBox(
                            width: width,
                            child: const Text('''286 Northway Road, Prospect
 Waterfalls, Harare
 complaints.feedback@ctdt.co.zw
 thamie@ctdt.co.zw''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ))),
                        const SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                            width: width,
                            child: const Text('Thank You',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ))),
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
              appbarmodified(width, blank(), blank(), blank())
            ])))));
// End of capsule
//
  }
}
