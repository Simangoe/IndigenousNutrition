// ignore_for_file: unused_local_variable, unused_import

import 'package:indigenousnutrition/item.dart';
import 'package:indigenousnutrition/pages/Earthoven_screen_1/Earthoven_screen_1.dart';
import 'package:indigenousnutrition/pages/Hotboxcooker_screen_1/Hotboxcooker_screen_1.dart';
import 'package:indigenousnutrition/appbarmodified.dart';
import 'package:indigenousnutrition/pages/postharvest/postharvest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class Healthandnutritiontechnologiesscreen1 extends StatefulWidget {
  const Healthandnutritiontechnologiesscreen1({Key? key}) : super(key: key);

  @override
  _Healthandnutritiontechnologiesscreen1State createState() =>
      _Healthandnutritiontechnologiesscreen1State();
}

class _Healthandnutritiontechnologiesscreen1State
    extends State<Healthandnutritiontechnologiesscreen1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 2.5, 0, 7.5),
                                child: Stack(children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(width: width, height: 1),
//
// Energy Efficient Stoves
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Energy Efficient Stoves",
                                          "assets/EnergyEfficientStoves_ImageButton_19-151x153.png",
                                          GestureDetector(onTap: () {
                                        Navigator.pushNamed(
                                            context, 'energyefficientstoves');
                                      })),

//
// Clay pot fridge
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Claypot Fridge",
                                          "assets/Frame 28.png",
                                          GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'Claypotfridgescreen3');
                                        },
                                      )),
//
// Keyhole Garden
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Keyhole Garden",
                                          "assets/Keyhole Garden.png",
                                          GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'Keyholegardenscreen4');
                                        },
                                      )),
//
// Solar Driers
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Solar Driers",
                                          "assets/SolarDriers_ImageButton_21-151x153.png",
                                          GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'SolarDriers');
                                        },
                                      )),
//
// Hotbox Cooker
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Hotbox Cooker",
                                          "assets/HotboxCooker_ImageButton_18-151x153.png",
                                          GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'HotboxCooker');
                                        },
                                      )),
//
// Post Harvest
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Post-harvest",
                                          "assets/image_ImageView_15-148x191.png",
                                          GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'Postharvest');
                                        },
                                      )),
//
// Earth Oven
                                      item(
                                          width,
                                          height,
                                          Colors.black54,
                                          "Earth Oven",
                                          "assets/image_ImageView_25-151x155.png",
                                          GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'EarthOven');
                                        },
                                      )),
                                    ],
                                  ),

// End of Content
//
                                  SizedBox(width: width, height: 10),
                                ]))),
                      ),
//
//Unscrolling capsule
                    ])))));

// End of capsule
//
  }
}
