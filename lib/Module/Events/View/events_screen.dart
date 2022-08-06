import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:userapp/Utils/constants.dart';

class EventsScreen extends StatefulWidget {
  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String eventstartdate = dateTime.toString().split(' ')[0];

    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        automaticallyImplyLeading: false,
        backgroundColor: overallcolor,
        // actions: [
        //   Padding(
        //       padding: EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () {
        //           showSearch(
        //               context: context,
        //               delegate: UserScreenCustomSearchDelegate());
        //         },
        //         child: Icon(
        //           Icons.search,
        //           size: 26.0,
        //         ),
        //       )),
        //   Padding(
        //       padding: EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () {
        //           Get.offAndToNamed(addeventsscreen);
        //         },
        //         child: Icon(
        //           Icons.add,
        //           size: 26.0,
        //         ),
        //       )),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  child: GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0))),
                            contentPadding: EdgeInsets.only(top: 10.0),
                            title: Text("Event Full Detail"),
                            content: Container(
                                height:
                                    MediaQuery.of(context).size.height ,
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Container(
                                            height: 150,
                                            width: 120,
                                            child: Image(
                                              image: AssetImage(
                                                'assets/kk.webp',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Event Title: Basant',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Basant',
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Event Description:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'A problem statement is a concise description of an issue to be addressed or a condition to be improved upon. It identifies the gap between the current (problem) state and desired (goal) state of a process or product. Focusing on the facts, the problem statement should be designed to address the Five Ws. ',
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Start Date:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '$currentdate',
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Start Time:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '$CurrentTime',
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'End Date:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        '$currentdate',
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: new Container(
                                            padding: new EdgeInsets.all(16.0),
                                            decoration: new BoxDecoration(
                                                color: const Color(0xFF33b17c),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: new Text(
                                              ' Okay',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontFamily:
                                                    'helvetica_neue_light',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        );
                   
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: ListTile(
                          title: Text('Event Title'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Start Date: ${eventstartdate}'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Start Time: ${CurrentTime}'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('End Date: ${eventstartdate}'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 5),
        ),
      ),
    );
  }
}
