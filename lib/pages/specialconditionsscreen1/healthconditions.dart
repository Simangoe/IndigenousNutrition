import 'package:indigenousnutrition/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class healthconditions extends StatefulWidget {
  const healthconditions({Key? key}) : super(key: key);

  @override
  _healthconditions createState() => _healthconditions();
}

class _healthconditions extends State<healthconditions> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                                textheading('specialconditions'.tr),
                                textsubheading('gout'.tr),
                                textbody('preventandcontrolgout'.tr),
                                textsubheading('hypertension'.tr),
                                textbody('preventandcontrolhypertension'.tr),
                                textsubheading('ulcers'.tr),
                                textbody('whatareulcers'.tr),
                                textbody('ulcerisasore'.tr),
                                textsubheading('preventandcontrolulcers'.tr),
                                textbody('ahealthyeatingpattern'.tr),
                                textsubheading('otherconsiderations'.tr),
                                textbody('ifyouhaveulcers'.tr),
                                textsubheading('diabetes'.tr),
                                textsubheading(
                                    'preventionandcontrolofdiabetes'.tr),
                                textbody('feelingyourbestliesinthefood'.tr),
                                textbody('eatunrefinedgrains'.tr),
                                textsubheading('covid'.tr),
                                textbody('giveyourbodyafightingchance'.tr),
                                textbody(
                                    'eatunrefinedgrainslikestraightrun'.tr),
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
