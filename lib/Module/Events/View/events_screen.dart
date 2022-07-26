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
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: ListTile(
                      title: Text('Event Title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Event Description of Event',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Start Date: ${eventstartdate}'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('End Date: ${eventstartdate}'),
                        ],
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
