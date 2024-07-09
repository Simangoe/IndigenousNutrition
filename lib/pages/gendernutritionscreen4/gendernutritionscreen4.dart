// ignore_for_file: unused_local_variable

import 'package:indigenousnutrition/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class Gendernutritionscreen4 extends StatefulWidget {
  const Gendernutritionscreen4({Key? key}) : super(key: key);

  @override
  _Gendernutritionscreen4State createState() => _Gendernutritionscreen4State();
}

class _Gendernutritionscreen4State extends State<Gendernutritionscreen4> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return PopScope(
        onPopInvoked: (result) async {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const Nutritionscreen1()));
          return;
        },
        child: MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 70,
                  leading: null,
                  actions: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      PopupMenuButton<_Languages>(
                        icon: Text('language'.tr),
                        iconSize: 70,
                        itemBuilder: (BuildContext context) => [
                          const PopupMenuItem(
                            value: _Languages.english,
                            child: Text('English'),
                          ),
                          const PopupMenuItem(
                            value: _Languages.shona,
                            child: Text('Shona'),
                          ),
                          const PopupMenuItem(
                            value: _Languages.ndebele,
                            child: Text('Ndebele'),
                          )
                        ],
                        onSelected: (value) {
                          switch (value) {
                            case _Languages.english:
                              var locale = const Locale('en', 'ZW');
                              Get.updateLocale(locale);
                              break;
                            case _Languages.shona:
                              var locale = const Locale('sn', 'ZW');
                              Get.updateLocale(locale);
                              break;
                            case _Languages.ndebele:
                              var locale = const Locale('nd', 'ZW');
                              Get.updateLocale(locale);
                              break;
                          }
                        },
                      ),
                    ])
                  ],
                  title: const Text("",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: FvColors.textview104FontColor,
                          wordSpacing: 1.0)),
                  backgroundColor: const Color.fromRGBO(195, 213, 175, 20),
                ),
                backgroundColor: Colors.white,
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
                                textheading('genderandnutrition'.tr),

                                textsubheading(
                                    "discouraginggenderbasedviolence".tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_62-268x289.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),
                                textbody(
                                    'discouraginggenderbasedviolencebody'.tr),
                                textsubheading('discouragingearlymarriages'.tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_64-285x253.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),
                                textbody('discouragingearlymarriagesbody'.tr),
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
