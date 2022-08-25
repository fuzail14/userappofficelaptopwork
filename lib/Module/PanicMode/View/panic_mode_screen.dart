import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:userapp/Utils/constants.dart';

class PanicModeScreen extends StatefulWidget {
  @override
  State<PanicModeScreen> createState() => _PanicModeScreenState();
}

class _PanicModeScreenState extends State<PanicModeScreen> {
  String dropdownvalue = 'Fire';

  // List of items in our dropdown menu
  var items = ['Fire', 'Thief', 'Health', 'Other'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Panic Mode"),
        backgroundColor: overallcolor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(14),
                width: 300,

                color: Colors.white70,
                child: Image.network(
                    'http://clipart-library.com/images/kcKopp8Xi.png',
                    
                    ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            dropdownvalue == 'Other'
                ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    
                    
                      decoration: InputDecoration(
                        hintText: 'Describe Problem',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        border: OutlineInputBorder(),
                      ),
                    ),
                )
                : Container(),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                        child: Text(
                      'Submit Problem',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
