// ignore_for_file: unused_local_variable, duplicate_ignore, use_full_hex_values_for_flutter_colors

import 'package:indigenousnutrition/pages/recipescreens/mbwirembwire.dart';
import 'package:indigenousnutrition/pages/recipescreens/avocadosweetpotatomilk.dart';
import 'package:indigenousnutrition/pages/recipescreens/nua45bean.dart';
import 'package:indigenousnutrition/pages/recipescreens/rupiza.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';
import '../recipescreens/Peanutpowderdumbings.dart';
import '../recipescreens/baobabmilkshake.dart';
import '../recipescreens/chemberedzagumanaumbida.dart';
import '../recipescreens/mubooraibhobolawithpeanutbutter.dart';
import '../recipescreens/orangemaizequeencake.dart';
import '../recipescreens/pumpkinporridgeenrichedwitheggsandsweetpotatoes.dart';

enum _Languages { english, shona, ndebele }

class Recipesscreen1 extends StatefulWidget {
  const Recipesscreen1({Key? key}) : super(key: key);

  @override
  _Recipesscreen1State createState() => _Recipesscreen1State();
}

class _Recipesscreen1State extends State<Recipesscreen1> {
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
// Recipe 1
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
                                                      const Nua45bean()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/nua45beanjpg.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  211, 64, 47, 27),
                                              child: const Text(
                                                "#1. Nua 45 Bean",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),
//
// Recipe 2
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
                                                      const Avocadosweetpotatomilk()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/avocado.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 22, 34, 1),
                                              child: const Text(
                                                "#2. Avocado and Sweet Potato in Milk",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ), //
// Recipe 3
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
                                                      const Mbwirembwire()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/mbrirembwire.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 37, 18, 12),
                                              child: const Text(
                                                "#3. Mbwirembwire",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ), //
// Recipe 4
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
                                                      const Orangemaizequeencake()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/orangemaize.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 43, 30, 9),
                                              child: const Text(
                                                "#4. Orange maize queen cake",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ), //
// Recipe 5
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
                                                      const Mubooraibhobolawithpeanutbutter()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/muboora.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 21, 65, 22),
                                              child: const Text(
                                                "#5. Muboora/Ibhobola With Peanut Butter",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ), //
// Recipe 6
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
                                                      const Pumpkinporridgeenrichedwitheggsandsweetpotatoes()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/pumpkinporridge.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 56, 55, 55),
                                              child: const Text(
                                                "#6. Pumpkin Porridge Enriched With Eggs & Sweet Potatoes",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),
// Recipe 7
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
                                                      const Chemberedzagumanaumbida()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/chemberedzagumhana.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 47, 45, 45),
                                              child: const Text(
                                                "#7. Chembere dzagumana or Umbida",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),
// Recipe 8
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
                                                      const Rupiza()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/rupiza.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  198, 48, 37, 17),
                                              child: const Text(
                                                "#8. Rupiza",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),
// Recipe 9
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
                                                      const Baobabmilkshake()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/mawuyu.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  199, 57, 56, 50),
                                              child: const Text(
                                                "#9. Baobab Milkshake/Mawuyu-umkhomo Milkshake",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
                                const SizedBox(
                                  height: 5,
                                ),
// Recipe 10
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
                                                      const Peanutpowderdumplings()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                            'assets/peanutpowder.jpg',
                                            width: width,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              width: width,
                                              height: height,
                                              color: const Color.fromARGB(
                                                  200, 51, 40, 4),
                                              child: const Text(
                                                "#10. Peanut powder dumplings",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )),
                                        ]))),
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
