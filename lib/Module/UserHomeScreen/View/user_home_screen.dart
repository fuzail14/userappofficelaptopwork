import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';
import 'package:userapp/Widgets/custom_container.dart';

import '../../../Utils/custom_alert_dialog.dart';

class UserHomeScreen extends StatefulWidget {
  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         child: Text('Society User'),
      //       ),
      //       ListTile(
      //         leading: Icon(
      //           Icons.home,
      //         ),
      //         title: const Text('Society Events'),
      //         onTap: () {
      //           Get.toNamed(eventsscreen);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(
      //           Icons.home,
      //         ),
      //         title: const Text('Report To Admin'),
      //         onTap: () {
      //           Get.toNamed(reporttoadminscreen);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(
      //           Icons.home,
      //         ),
      //         title: const Text('Report To GateKeeper'),
      //         onTap: () {
      //           Get.toNamed(reporttogatekeeperscreen);
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      appBar: AppBar(
          title: Text('Society User'),
          backgroundColor: overallcolor,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconBadge(
              icon: Icon(Icons.notifications_none),
              itemCount: 100,
              badgeColor: Colors.red,
              maxCount: 99,
              hideZero: true,
              onTap: () {
                Get.toNamed(notificationsscreen);
              },
            ),
          ]),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Text(
              'Reports',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(
              color: overallcolor,
              thickness: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CustomContainer(
                  onTap: () {
                    Get.toNamed(reporttoadminscreen);
                  },
                  title: 'Report To Admin',
                  Icon: Icon(Icons.admin_panel_settings, color: overallcolor)),
              CustomContainer(
                  onTap: () {
                    Get.toNamed(reporttogatekeeperscreen);
                  },
                  title: 'Report To GateKeeper',
                  Icon: Icon(Icons.person_add, color: overallcolor)),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: []),
            Text(
              'Service Provider',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(
              color: overallcolor,
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                    onTap: () {
                      Get.toNamed(hireserviceproviderscreen);
                    },
                    title: 'Hire Service Provider',
                    Icon: Icon(Icons.room_service, color: overallcolor)),
                CustomContainer(
                    onTap: () {
                      Get.toNamed(serviceprovidersattendancescreen);
                    },
                    title: 'Service Provider Attendance',
                    Icon: Icon(Icons.history, color: overallcolor)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Histories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(
              color: overallcolor,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                    onTap: () {
                      Get.toNamed(reportshistoryscreen);
                    },
                    title: 'Admin Reports History',
                    Icon: Icon(Icons.history, color: overallcolor)),
                CustomContainer(
                    onTap: () {
                      Get.toNamed(guestshistoryscreen);
                    },
                    title: 'Guest History',
                    Icon: Icon(Icons.history, color: overallcolor)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Others',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(
              color: overallcolor,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                    onTap: () {
                      Get.toNamed(eventsscreen);
                    },
                    title: 'Society Events',
                    Icon: Icon(
                      Icons.event,
                      color: overallcolor,
                    )),
                CustomContainer(
                    onTap: () {
                      Get.toNamed(panicmodescreen);
                    },
                    title: 'Panic Mode',
                    Icon: Icon(Icons.dangerous, color: overallcolor)),
              ],
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: overallcolor,
          onPressed: () {
            Get.toNamed(chatavailbilityscreen);

          
          },
          child: const Icon(Icons.chat)),
    );
  }
}
