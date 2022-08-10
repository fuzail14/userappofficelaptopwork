import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';
import 'package:userapp/Utils/custom_alert_dialog.dart';

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
                  height: 190,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CustomAlertDialog(
                            title: 'Full',
                            Columnc: <Widget>[
                              
                             
                                  Text(
                                    'Guest Name:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Suleman Abrar',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Description:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    'Date:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    'Time:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '$CurrentTime',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Vehicle No:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Rim-5676543',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GFCard(
                                    boxFit: BoxFit.cover,
                                    title: GFListTile(
                                      title: Text(
                                        'Pending:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subTitle: Text(
                                        'Your Request Is Pending',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    content: Column(
                                      children: [
                                        Text(
                                          '$CurrentTime',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '$currentdate',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
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
                                            fontFamily: 'helvetica_neue_light',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                            
                          );
                        },
                      );

                      
                    },
                    child: Card(
                      shadowColor: overallcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: ListTile(
                        title: Text('Report Title'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Guest Arrival Time: ${currentTime}'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Guest Vehcile No: Rim-875433'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Report Status:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Request Pending'),
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
                        ]),
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
