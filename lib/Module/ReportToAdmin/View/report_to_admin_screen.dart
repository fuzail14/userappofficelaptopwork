

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';

class ReportToAdminScreen extends StatefulWidget {
  @override
  State<ReportToAdminScreen> createState() => _ReportToAdminScreenState();
}

class _ReportToAdminScreenState extends State<ReportToAdminScreen> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String eventstartdate = dateTime.toString().split(' ')[0];

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
                        builder: (ctx) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          contentPadding: EdgeInsets.only(top: 10.0),
                          title: Text("Report Full Detail"),
                          content: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
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
                                    // Row(
                                    //   children: [
                                    //     Container(
                                    //         padding: new EdgeInsets.all(16.0),
                                    //         decoration: new BoxDecoration(
                                    //             color: Color.fromARGB(255, 96, 197, 155),
                                    //             borderRadius:
                                    //                 BorderRadius.circular(30)),
                                    //         child: new Text(
                                    //           'Pending',
                                    //           style: TextStyle(
                                    //             color: Colors.white,
                                    //             fontSize: 18.0,
                                    //             fontFamily:
                                    //                 'helvetica_neue_light',
                                    //           ),
                                    //           textAlign: TextAlign.center,
                                    //         ),
                                    //       ),
                                    //   ],
                                    // ),

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
                        title: Text('Report Title'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            SizedBox(
                              height: 10,
                            ),
                            Text('Report Date: ${eventstartdate}'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Report Status:',style: TextStyle(fontWeight: FontWeight.bold),),
                            

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
                  ),
                );
              },
              itemCount: 5),
        ),
      ),
    );
  }
}
