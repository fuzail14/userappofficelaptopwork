import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Routes/routes_managment.dart';

import 'package:userapp/Routes/set_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashscreen,
      getPages: RouteManagement.getPages(),
    );
  }
}
