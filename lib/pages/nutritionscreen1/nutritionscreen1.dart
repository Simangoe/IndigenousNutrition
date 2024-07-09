// ignore_for_file: unused_local_variable, unused_import

import 'package:indigenousnutrition/appbarmodified.dart';
import 'package:indigenousnutrition/pages/specialconditionsscreen1/healthconditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';
import 'package:indigenousnutrition/main.dart';

enum _Languages { english, shona, ndebele }

class Nutritionscreen1 extends StatefulWidget {
  const Nutritionscreen1({Key? key}) : super(key: key);

  @override
  _Nutritionscreen1State createState() => _Nutritionscreen1State();
}

class _Nutritionscreen1State extends State<Nutritionscreen1> {
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
                          child: Stack(children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: width, height: 1),
//
// Maternal Nutrition
                                Container(
                                    width: width,
                                    height: 175,
                                    color: FvColors.imagebutton122Background,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Maternalnutritionscreen2()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/Nutrition_ImageButton_18-151x153.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Maternal Nutrition",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),
//
// Child Nutrition
                                Container(
                                  width: width,
                                  height: 175,
                                  color: FvColors.imagebutton122Background,
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Childnutritionscreen5()));
                                      },
                                      child: Stack(children: [
                                        Image.asset(
                                            "assets/Frame_ImageButton_21-151x213.png",
                                            width: width,
                                            fit: BoxFit.fitWidth),
                                        Container(
                                          width: width,
                                          height: height,
                                          color: Colors.black54,
                                        ),
                                        const Text(
                                          " Child Nutrition",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ])),
                                ),
                                const SizedBox(
                                  height: 5,
                                ), //Container

//
// Adolesent Nutrition
                                Container(
                                  width: width,
                                  height: 175,
                                  color: FvColors.imagebutton122Background,
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Adolescentnutritionscreen3()));
                                      },
                                      child: Stack(children: [
                                        Image.asset(
                                            "assets/AdolescentNutrition_ImageButton_19-153x213.png",
                                            width: width,
                                            fit: BoxFit.fitWidth),
                                        Container(
                                          width: width,
                                          height: height,
                                          color: Colors.black54,
                                        ),
                                        const Text(
                                          " Adolescent Nutrition",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ])),
                                ),
                                const SizedBox(
                                  height: 5,
                                ), //Container

//
// Household Nutrition
                                Container(
                                    width: width,
                                    height: 175,
                                    color: FvColors.imagebutton122Background,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Householdnutritionscreen3()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/Household_nutrition_ImageButton_20-151x153.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Household Nutrition",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),

//
// Gender Nutrition
                                Container(
                                    width: width,
                                    height: 175,
                                    color: FvColors.imagebutton122Background,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Gendernutritionscreen4()));
                                        },
                                        child: Stack(children: [
                                          Image.asset("assets/image 915.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Gender Nutrition",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ]))),

//
// Health Conditions
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    width: width,
                                    height: 175,
                                    color: FvColors.imagebutton122Background,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const healthconditions()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/Special Health Conditions.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Health Conditions",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ]))),
                                //
// End of content
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
