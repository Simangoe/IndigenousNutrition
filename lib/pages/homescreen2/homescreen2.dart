// ignore_for_file: unused_local_variable, unused_import

import 'package:indigenousnutrition/pages/bmi/bmi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class Homescreen2 extends StatefulWidget {
  const Homescreen2({Key? key}) : super(key: key);

  @override
  _Homescreen2State createState() => _Homescreen2State();
}

class _Homescreen2State extends State<Homescreen2> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  //using this function you can use the credentials of the user
  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: PopScope(
            onPopInvoked: (result) async {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Onboardingscreen1()));
              return;
            },
            child: Scaffold(
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
                      IconButton(
                          icon: const Icon(Icons.logout),
                          onPressed: () {
                            _auth.signOut();
                            Navigator.pushNamed(context, 'welcome_screen');
                            Get.updateLocale(const Locale(
                                'en', 'ZW')); //Implement logout functionality
                          }),
                    ])
                  ],
                  title: const Text("Home",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
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
// Nutrition
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
                                                      const Nutritionscreen1()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/vegetables-1584999_1280.jpg",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Nutrition",
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
// BMI
                                SizedBox(
                                    width: width,
                                    height: 175,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BmiCalculatorController()));
                                        },
                                        child: Stack(children: [
                                          Image.asset("assets/bmi.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Body Mass Index",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ]))),

//
// Health and Nutrition Technologies
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
                                                    const Healthandnutritiontechnologiesscreen1()));
                                      },
                                      child: Stack(children: [
                                        Image.asset(
                                            "assets/Screenshot 2022-09-08 131138.png",
                                            width: width,
                                            fit: BoxFit.fitWidth),
                                        Container(
                                          width: width,
                                          height: height,
                                          color: Colors.black54,
                                        ),
                                        const Text(
                                          " Health & Nutrition\n Technologies",
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
// Recipes
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
                                                      const Recipesscreen1()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/potjie-2005218_1280.jpg",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Recipes",
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
// Wash
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
                                                      const Washscreen2()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/corona-5069862_1920.jpg",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Wash",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ]))),

//
// Library
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
                                                      const Libraryscreen2()));
                                        },
                                        child: Stack(children: [
                                          Image.asset("assets/Library.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Library",
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
                    ])))));

// End of capsule
//
  }
}
