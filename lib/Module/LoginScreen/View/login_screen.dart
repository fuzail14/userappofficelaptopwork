import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/Module/LoginScreen/Controller/login_screen_controller.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenScreenState();
}

class _LoginScreenScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        automaticallyImplyLeading: false,
        backgroundColor: overallcolor,
      ),
      body: GetBuilder<LoginScreenController>(
          init: LoginScreenController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image(
                          image: AssetImage(splashlogo),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: controller.cnic,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'ENTER  Cnic';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            debugPrint('Something changed in Cnic Text Field');
                            print('value of cnic $value');
                          },
                          decoration: InputDecoration(
                              labelText: 'CNIC',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: controller.password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'ENTER  Password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            debugPrint(
                                'Something changed in Password Text Field');
                            print('value of Password $value');
                          },
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: overallcolor,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                ),
                                child: Text(
                                  'Save',
                                  textScaleFactor: 1.5,
                                ),
                                onPressed: () {
                                  if (controller.formKey.currentState!
                                      .validate()) {
                                    controller.formKey.currentState!.save();
                                    Get.toNamed(userhomecreen);
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            );
          }),
    );
  }
}
