import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:userapp/Routes/set_routes.dart';

import 'package:userapp/Utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.toNamed(loginscreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image(
          image: AssetImage(splashlogo),
        )),
      ),
    );
  }
}
