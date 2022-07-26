import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const splashlogo = 'assets/mia.png';
const userpic = 'assets/k.webp';
const userpic2 = 'assets/kk.webp';
final Color overallcolor = HexColor('#bc8d55');

Map<int, Color> color = {
  50: Color.fromARGB(23, 89, 4, 201),
  100: Color.fromARGB(51, 17, 8, 68),
  200: Color.fromARGB(75, 65, 40, 156),
  300: Color.fromARGB(102, 38, 10, 114),
  400: Color.fromRGBO(188, 141, 85, .5),
  500: Color.fromRGBO(188, 141, 85, .6),
  600: Color.fromRGBO(188, 141, 85, .7),
  700: Color.fromRGBO(188, 141, 85, .8),
  800: Color.fromRGBO(188, 141, 85, .9),
  900: Color.fromRGBO(188, 141, 85, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
