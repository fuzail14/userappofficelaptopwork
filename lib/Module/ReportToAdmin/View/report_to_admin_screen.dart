import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:userapp/Module/ReportToAdmin/Controller/report_to_admin_controller.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';
import 'package:userapp/Utils/custom_alert_dialog.dart';

class ReportToAdminScreen extends StatefulWidget {
  @override
  State<ReportToAdminScreen> createState() => _ReportToAdminScreenState();
}

class _ReportToAdminScreenState extends State<ReportToAdminScreen> {
  ReportToAdminController reportToAdminController = ReportToAdminController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Report'),
        automaticallyImplyLeading: false,
        backgroundColor: overallcolor,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Get.offAndToNamed(addreporttoadminscreen);
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
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => CustomAlertDialog(
                                  title: 'Report Full Detail',
                                  Columnc: <Widget>[
                                    Text(
                                      'Report Title:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      ' Water Problem',
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Report Description:',
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
                                      'Date:',
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
                                      'Time:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$CurrentTime',
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                              fixedSize: Size(100, 40),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () {
                                            //Get.offAndToNamed(viewreportscreen);
                                            AwesomeDialog(
                                              context: context,
                                              dialogType: DialogType.INFO,
                                              animType: AnimType.BOTTOMSLIDE,
                                              title: 'Problem Solved?',
                                              desc:
                                                  'Are You Sure Your  Problem Resolved...',
                                                    btnOkOnPress: () {
                                                Get.back();
                                              },
                                              btnCancelOnPress: () {
                                                Get.back();
                                              },
                                              btnCancelText: 'No',
                                              btnOkText: 'Yes',
                                            
                                            )..show();
                                          },
                                          child: const Text(
                                            'Problem Solved',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.red,
                                              fixedSize: Size(100, 40),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: const Text(
                                            'No',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: ListTile(
                        title: Text('Report Title'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('Report Date: ${currentdate}'),
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
