// ignore_for_file: unused_import
import 'package:indigenousnutrition/BouncyPageRoute.dart';
import 'package:indigenousnutrition/My_Stuff.dart';
import 'package:indigenousnutrition/login_screen.dart';
import 'package:indigenousnutrition/roundedbutton.dart';
import 'package:indigenousnutrition/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../ui/export.dart';
import 'package:get/get.dart';
import 'package:indigenousnutrition/main.dart';

late User loggedinUser;

class Onboardingscreen1 extends StatefulWidget {
  const Onboardingscreen1({Key? key}) : super(key: key);

  @override
  _Onboardingscreen1State createState() => _Onboardingscreen1State();
}

class _Onboardingscreen1State extends State<Onboardingscreen1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: Scaffold(
            backgroundColor: FvColors.button123Background,
            body: SizedBox(
                width: width,
                height: height,
                child: Stack(children: [
                  // Main name on screen

                  Positioned(
                      top: 20,
                      child: SizedBox(
                          width: width,
                          height: 30,
                          child: const Text(
                            "Health and Nutrition for Everyone",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: FvColors.textview104FontColor,
                                wordSpacing: 1.0),
                          ))),

                  Positioned(
                      top: 100,
                      child: Stack(alignment: Alignment.center, children: [
                        Image.asset("assets/onboardingpicture.jpg",
                            width: width),

                        // Sign in

                        Positioned(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
//
                                children: [
                              RoundedButton(
                                  colour: const Color.fromARGB(219, 76, 175, 79),
                                  title: "Sign in",
                                  onPressed: () {
                                    Navigator.of(context).push(PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(seconds: 1),
                                        transitionsBuilder:
                                            (BuildContext context,
                                                Animation<double> animation,
                                                Animation<double>
                                                    secondaryAnimation,
                                                Widget child) {
                                          animation = CurvedAnimation(
                                              parent: animation,
                                              curve: Curves
                                                  .fastLinearToSlowEaseIn);
                                          return ScaleTransition(
                                            scale: animation,
                                            alignment: Alignment.center,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (BuildContext context,
                                            Animation<double> animation,
                                            Animation<double>
                                                secondaryAnimation) {
                                          return const LoginScreen();
                                        }));
                                  }),
                              RoundedButton(
                                  colour: const Color.fromARGB(219, 76, 175, 79),
                                  title: "Register",
                                  onPressed: () {
                                    Navigator.of(context).push(PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(seconds: 1),
                                        transitionsBuilder:
                                            (BuildContext context,
                                                Animation<double> animation,
                                                Animation<double>
                                                    secondaryAnimation,
                                                Widget child) {
                                          animation = CurvedAnimation(
                                              parent: animation,
                                              curve: Curves
                                                  .fastLinearToSlowEaseIn);
                                          return ScaleTransition(
                                            scale: animation,
                                            alignment: Alignment.center,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (BuildContext context,
                                            Animation<double> animation,
                                            Animation<double>
                                                secondaryAnimation) {
                                          return const RegistrationScreen();
                                        }));
                                  }),
                              RoundedButton(
                                  colour: const Color.fromARGB(219, 76, 175, 79),
                                  title: 'Continue without account',
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      'home_screen',
                                    );
                                  }),
                            ]))
                      ])),

//
// Logos

                  Positioned(
                      top: height - 70,
                      child: Container(
                        alignment: Alignment.center,
                        width: width,
                        height: 75,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/GermanCoorp_ImageView_20-74x41.png"),
                              SizedBox(width: width / 20),
                              Image.asset(
                                  "assets/removebgpreview_ImageView_21-54x54.png"),
                              SizedBox(width: width / 20),
                              Image.asset(
                                  "assets/MinistryofHealthandChildWelfareLogo_ImageView_22-55x63.png"),
                              SizedBox(width: width / 20),
                              Image.asset(
                                  "assets/WeltHungerHilfeLogo_ImageView_23-64x44.png")
                            ]),
                      ))
                ]))));
    // End Ndebelelanguageselector_Container_29
  }
}
