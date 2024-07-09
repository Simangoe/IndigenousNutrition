// ignore_for_file: unused_local_variable

import 'package:indigenousnutrition/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class Householdnutritionscreen3 extends StatefulWidget {
  const Householdnutritionscreen3({Key? key}) : super(key: key);

  @override
  _Householdnutritionscreen3State createState() =>
      _Householdnutritionscreen3State();
}

class _Householdnutritionscreen3State extends State<Householdnutritionscreen3> {
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
                                textheading('householdnutrition'.tr),

                                textsubheading(
                                    'consumptionofdiversenutritiousfoods'.tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_48-280x285.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),
                                textbody(
                                    'consumptionofdiversenutritiousfoodsbody'
                                        .tr),
                                textsubheading(
                                    'Production and consumption of Bio fortified crops'
                                        .tr),
                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_50-271x217.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),
                                textbody('biofortifiedcropvarieties'.tr),

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
