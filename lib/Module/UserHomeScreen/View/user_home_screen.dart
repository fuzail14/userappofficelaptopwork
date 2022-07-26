import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Get.toNamed(eventsscreen);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Society User'),
        backgroundColor: overallcolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white70,
                child: Image(
                  image: AssetImage(
                    userpic2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: overallcolor,
          onPressed: () {Get.toNamed(chatavailbilityscreen);},
          child: const Icon(Icons.chat)),
    );
  }
}
