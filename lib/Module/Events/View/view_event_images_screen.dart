import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:userapp/Routes/set_routes.dart';
import 'package:userapp/Utils/constants.dart';

import '../../../Widgets/image_show.dart';

class ViewEventImages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 4,
          itemCount: 1,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(viewimage,arguments: [userpic,userpic]);
                
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Hero(
                      tag: userpic,
                      child: Image.asset(
                          userpic,
                    )),
              ),
             ) );
          },
        ),
      ),
    );
  }
}
