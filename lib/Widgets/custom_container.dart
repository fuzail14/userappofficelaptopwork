import 'package:flutter/material.dart';
import 'package:userapp/Utils/constants.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({this.onTap, this.title,this.Icon});
    
    

  void Function()? onTap;
  String? title;
  dynamic Icon;
    

    
  @override
  Widget build(BuildContext context) {
    return 
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.187, //137
            width: MediaQuery.of(context).size.width * 0.430, //155
            decoration: BoxDecoration(
                color: overallcolor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.032, //24
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.070, //51
                  width: MediaQuery.of(context).size.width * 0.145, //51
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon,
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                   title!,
                   textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.044, //16


                      fontFamily: "OpenSansSemiBold",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      
    
  }
}
