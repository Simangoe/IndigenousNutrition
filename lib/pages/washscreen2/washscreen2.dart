import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class Washscreen2 extends StatefulWidget {
  const Washscreen2({Key? key}) : super(key: key);

  @override
  _Washscreen2State createState() => _Washscreen2State();
}

class _Washscreen2State extends State<Washscreen2> {
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(width: width, height: 1),
//
// Tippy Tap
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
                                                        const Tippytapscreen3()));
                                          },
                                          child: Stack(children: [
                                            Image.asset(
                                                "assets/TippyTap_ImageButton_40-153x213.png",
                                                width: width,
                                                fit: BoxFit.fitWidth),
                                            Container(
                                              width: width,
                                              height: height,
                                              color: Colors.black54,
                                            ),
                                            const Text(
                                              " Tippy Tap",
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
// Two Level Pot-Track
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
                                                      const Twolevelpotrackscreen4()));
                                        },
                                        child: Stack(children: [
                                          Image.asset(
                                              "assets/TwoLevelpottrack_ImageButton_124-151x213.png",
                                              width: width,
                                              fit: BoxFit.fitWidth),
                                          Container(
                                            width: width,
                                            height: height,
                                            color: Colors.black54,
                                          ),
                                          const Text(
                                            " Two Level Pot-Track",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ])),
                                  ),
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
                      ]),
                ))));

// End of capsule
//
  }
}
