import 'package:flutter/material.dart';
class ViewImage extends StatefulWidget {

  final String? tag;
  final String? img;

  const ViewImage({ super.key, required this.tag,required this.img});


  @override
  State<ViewImage> createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: Hero(tag: widget.tag!,
      child: Center(child: Image.network(widget.img!)),

   
    ));
  }
}