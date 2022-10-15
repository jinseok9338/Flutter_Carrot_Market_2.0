import 'package:carrot_market_2_0/controllers/auth_controller.dart';
import 'package:carrot_market_2_0/theme.dart';
import 'package:carrot_market_2_0/views/screens/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthController());
  });

  runApp(MyApp(
    appTheme: AppTheme()
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({
    Key? key,
    required this.appTheme,
  }) : super(key: key);

  final AppTheme appTheme;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrot Market 2.0',
      theme: appTheme.light,
      themeMode: ThemeMode.dark,
      darkTheme: appTheme.dark,
      home: LoginScreen(),
    );
  }
}
