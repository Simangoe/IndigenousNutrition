// ignore_for_file: unused_local_variable, unused_import

import 'package:indigenousnutrition/font.dart';
import 'package:indigenousnutrition/appbarmodified.dart';
import 'package:flutter/material.dart';
import '../../ui/export.dart';
import 'package:get/get.dart';
import 'package:indigenousnutrition/main.dart';
import 'package:google_fonts/google_fonts.dart';

enum _Languages { english, shona, ndebele }

class Postharvest extends StatefulWidget {
  const Postharvest({Key? key}) : super(key: key);

  @override
  _Postharvest createState() => _Postharvest();
}

class _Postharvest extends State<Postharvest> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return PopScope(
        onPopInvoked: (result) async {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const Healthandnutritiontechnologiesscreen1()));
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
                                textheading("Post Harvest Technologies".tr),
                                textsubheading('corncrib'.tr),
                                textbody('acribisahouseholdstructure'.tr),
                                textbody('stakeoutthebuildingsite'.tr),
                                textsubheading('hermiticbags'.tr),
                                textbody('openthebag'.tr),
                                textsubheading('metalsilos'.tr),
                                textbody('metalsiloisacylindrical'.tr),
                                textbody('advantagesofametalsilo'.tr),
                                textbody('metalsilo20lbucket'.tr),
                                textbody('whenloadingdonotleanon'.tr),
                                textsubheading('improvedbrickgranaries'.tr),
                                textbody('thegranaryismadeofwell'.tr),

// End of Content
//
                                SizedBox(width: width, height: 10),
                              ],
                            ),
                          ]),
                        ),
                      ),
//
                    ])))));

// End of capsule
//
  }
}
