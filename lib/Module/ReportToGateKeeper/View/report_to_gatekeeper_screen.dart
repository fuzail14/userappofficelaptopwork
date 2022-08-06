import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';

class ReportToGateKeeperScreen extends StatefulWidget {
  @override
  State<ReportToGateKeeperScreen> createState() =>
      _ReportToGateKeeperScreenState();
}

class _ReportToGateKeeperScreenState extends State<ReportToGateKeeperScreen> {
  DateTime dateTime = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    String eventstartdate = dateTime.toString().split(' ')[0];
    var currentTime =
        '${timeOfDay.hour.toString().padLeft(2, '0')}:${timeOfDay.minute.toString().padLeft(2, '0')}:${timeOfDay.period.toString().split('.')[1]}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Gate Keeper Report'),
        automaticallyImplyLeading: false,
        backgroundColor: overallcolor,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Get.offAndToNamed(addreporttogatekeeperscreen);
                },
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              )),
        ],
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
                      title: Text('Report Title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Report Description',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Date: ${eventstartdate}'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Guest Arrival Time: ${currentTime}'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Guest Vehcile No'),
                        ],
                      ),
                      trailing: Wrap(children: [
                        InkWell(
                          onTap: () {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.QUESTION,
                              animType: AnimType.BOTTOMSLIDE,
                              title: 'Are You Sure',
                              desc:
                                  'Are You Sure You Want To Delete This.............',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                              btnOkText: 'Delete',
                              btnOkColor: overallcolor,
                              btnCancelColor: overallcolor,
                            )..show();
                          },
                          child: Icon(
                            Icons.delete,
                            color: overallcolor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     Get.offAndToNamed(updateeventsscreen);
                        //   },
                        //   child: Icon(
                        //     Icons.edit,
                        //     color: overallcolor,
                        //   ),
                        // ),
                      ]),
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
