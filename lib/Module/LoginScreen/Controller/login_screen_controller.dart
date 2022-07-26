import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  TextEditingController cnic = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = new GlobalKey<FormState>();
}
