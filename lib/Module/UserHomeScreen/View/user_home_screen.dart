import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';

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
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(eventsscreen);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.187, //137
                    width: MediaQuery.of(context).size.width * 0.430, //155
                    decoration: BoxDecoration(
                        color: overallcolor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.032, //24
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.070, //51
                          width: MediaQuery.of(context).size.width * 0.145, //51
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.person_add),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Society Events',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.044, //16
                            fontFamily: "OpenSansSemiBold",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                   Get.toNamed(reporttoadminscreen);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.187, //137
                    width: MediaQuery.of(context).size.width * 0.430, //155
                    decoration: BoxDecoration(
                        color: overallcolor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.032, //24
                        ),
                        Container(
                            height:
                                MediaQuery.of(context).size.height * 0.070, //51
                            width:
                                MediaQuery.of(context).size.width * 0.145, //51
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Icon(Icons.person_add_alt_1)),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Report To Admin',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.044, //16
                            fontFamily: "OpenSansSemiBold",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(eventsscreen);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.187, //137
                    width: MediaQuery.of(context).size.width * 0.430, //155
                    decoration: BoxDecoration(
                        color: overallcolor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.032, //24
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.070, //51
                          width: MediaQuery.of(context).size.width * 0.145, //51
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.event),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Report To GateKeeper',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.044, //16
                            fontFamily: "OpenSansSemiBold",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //Get.toNamed(viewreportscreen);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.187, //137
                    width: MediaQuery.of(context).size.width * 0.430, //155
                    decoration: BoxDecoration(
                        color: overallcolor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.032, //24
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.070, //51
                          width: MediaQuery.of(context).size.width * 0.145, //51
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.report),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Report History',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.044, //16
                            fontFamily: "OpenSansSemiBold",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(eventsscreen);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.187, //137
                    width: MediaQuery.of(context).size.width * 0.430, //155
                    decoration: BoxDecoration(
                        color: overallcolor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.032, //24
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.070, //51
                          width: MediaQuery.of(context).size.width * 0.145, //51
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.event),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Guest History',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.044, //16
                            fontFamily: "OpenSansSemiBold",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
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
