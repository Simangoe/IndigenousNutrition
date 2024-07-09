// ignore_for_file: unused_local_variable

import 'package:indigenousnutrition/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/export.dart';

enum _Languages { english, shona, ndebele }

class Childnutritionscreen5 extends StatefulWidget {
  const Childnutritionscreen5({Key? key}) : super(key: key);

  @override
  _Childnutritionscreen5State createState() => _Childnutritionscreen5State();
}

class _Childnutritionscreen5State extends State<Childnutritionscreen5> {
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
                                textheading('CHILD NUTRITION'.tr),

                                textsubheading(
                                  'Exclusivebreastfeedingforchildren'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_76-195x214.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                  'goodpositioninghelpstoensurethatyourbabysuckles'
                                      .tr,
                                ),

                                textbody(
                                  'therearedifferentwaystopositionyourbaby'.tr,
                                ),

                                textsubheading(
                                  'exclusivebreastfeeding'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_78-205x227.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                  'breastmilkprovidesall'.tr,
                                ),

                                textsubheading(
                                  'benefitsofexclusivebreastfeeding'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_81-211x229.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                  'exclusivebreastfeedingforthefirst6months'.tr,
                                ),

                                textsubheading(
                                  'expressionofbreastmilk'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_85-308x298.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                  'amothercanexpressbreastmilk'.tr,
                                ),

                                textsubheading(
                                  'breastfeedingfrequently'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_88-225x241.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textsubheading(
                                  'complementaryfeedingat6months'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_91-227x192.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                  'continuebreastfeedingyourbabyonfrequently'
                                      .tr,
                                ),

                                textsubheading(
                                  'feedingthebaby6to9months'.tr,
                                ),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_100-230x171.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody('continuebreastfeedingyourbaby'.tr),

                                textsubheading('feedingthebaby9to12months'.tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_103-243x173.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                  'continuebreastfeedingyourbabyondemandbothdayandnight'
                                      .tr,
                                ),

                                textsubheading(
                                    'complementaryfeedingfrom12upto24months'
                                        .tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_106-248x175.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody('feedingthebaby12to24months'.tr),

                                textsubheading('foodvariety'.tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_109-223x212.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody('feedingthebaby12to24monthsbody'.tr),

                                textsubheading(
                                    'promotinggrowthmonitoringimmunizationandmicronutrientsupplementationforchildrenunder5years'
                                        .tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_112-163x214.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                    'promotinggrowthmonitoringimmunizationandmicronutrientsupplementationforchildrenunder5yearbody'
                                        .tr),

                                textsubheading(
                                    'earlyidentificationofchildhoodillnesses'
                                        .tr),

                                Container(
                                  child: Image.asset(
                                      "assets/image_ImageView_115-243x135.png",
                                      width: width,
                                      fit: BoxFit.fitWidth),
                                ),

                                textbody(
                                    'earlyidentificationofchildhoodillnessesbody'
                                        .tr),

// End of Content
//
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
