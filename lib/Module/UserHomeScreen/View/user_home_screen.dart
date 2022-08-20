import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';
import 'package:userapp/Widgets/custom_container.dart';

class UserHomeScreen extends StatelessWidget {
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: Column(
            
            
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: [
              CustomContainer(
                onTap: () {
                  Get.toNamed(eventsscreen);
                },
                title: 'Society Events',
                Icon: Icon(Icons.event)

              ),
              
              CustomContainer(
                onTap: () {
                  Get.toNamed(reporttoadminscreen);
                },
                title: 'Report To Admin',
                Icon: Icon(Icons.admin_panel_settings)
                
              )
            ]),
            SizedBox(height: MediaQuery.of(context).size.height*0.020,),
            

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              CustomContainer(
                onTap: () {
                  Get.toNamed(reporttogatekeeperscreen);
                },
                title: 'Report To GateKeeper',
                Icon: Icon(Icons.person_add)
                
              ),
              
              CustomContainer(
                onTap: () {
                  Get.toNamed(reportshistoryscreen);
                },
                title: 'Report History',
                Icon: Icon(Icons.history)
                
              ),
            ]),
            SizedBox(height: MediaQuery.of(context).size.height*0.020,),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                CustomContainer(
                  onTap: () {
                    Get.toNamed(guestshistoryscreen);
                  },
                  title: 'Guest History',
                  Icon: Icon(Icons.history)
                
                ),
                

                CustomContainer(
                  onTap: () {
                    Get.toNamed(hireserviceproviderscreen);
                  },
                  title: 'Hire Service Provider',
                  Icon: Icon(Icons.room_service)
                
                ),
                
              ],
            ),
SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                CustomContainer(
                  onTap: () {
                    Get.toNamed(serviceprovidersattendancescreen);
                  },
                  title: 'Service Provider Attendance',
                  Icon: Icon(Icons.history)
                
                ),

                                
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
