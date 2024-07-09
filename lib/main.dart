// ignore_for_file: use_key_in_widget_constructors

import 'package:indigenousnutrition/localstring.dart';
import 'package:indigenousnutrition/login_screen.dart';
import 'package:indigenousnutrition/pages/Earthoven_screen_1/Earthoven_screen_1.dart';
import 'package:indigenousnutrition/pages/Hotboxcooker_screen_1/Hotboxcooker_screen_1.dart';
import 'package:indigenousnutrition/pages/claypotfridgescreen3/claypotfridgescreen3.dart';
import 'package:indigenousnutrition/pages/energyefficientstovesscreen2/energyefficientstovesscreen2.dart';
import 'package:indigenousnutrition/pages/homescreen2/homescreen2.dart';
import 'package:indigenousnutrition/pages/keyholegardenscreen4/keyholegardenscreen4.dart';
import 'package:indigenousnutrition/pages/postharvest/postharvest.dart';
import 'package:indigenousnutrition/pages/solardriersscreen5/solardriersscreen5.dart';
import 'package:indigenousnutrition/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/onboardingscreen1/onboardingscreen1.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> isLogged() async {
    try {
      final User? user = _firebaseAuth.currentUser;
      return user != null;
    } catch (e) {
      return false;
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  final Auth auth = Auth();
  final bool isLogged = await auth.isLogged();
  final MyApp myApp = MyApp(
    initialRoute: isLogged ? 'home_screen' : 'welcome_screen',
  );
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  final String initialRoute;

  const MyApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: localstring(),
      locale: const Locale('en', 'ZW'),
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('en', 'ZW'),
      supportedLocales: const [
        Locale('en', 'ZW'), // English,
        Locale('sn', 'ZW'), // Shona,
        Locale('nd', 'ZW'), // Ndebele,
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Mana Nutrition',
      home: const Onboardingscreen1(),
      initialRoute: initialRoute,
      routes: {
        'welcome_screen': (context) => const Onboardingscreen1(),
        'registration_screen': (context) => const RegistrationScreen(),
        'login_screen': (context) => const LoginScreen(),
        'home_screen': (context) => const Homescreen2(),
        'energyefficientstoves': (context) =>
            const Energyefficientstovesscreen2(),
        'Claypotfridgescreen3': (context) => const Claypotfridgescreen3(),
        'Keyholegardenscreen4': (context) => const Keyholegardenscreen4(),
        'SolarDriers': (context) => const Solardriersscreen5(),
        'HotboxCooker': (context) => const Hotboxcooker_screen_1(),
        'Postharvest': (context) => const Postharvest(),
        'EarthOven': (context) => const EarthOvenScreen(),
      },
    );
  }
}
