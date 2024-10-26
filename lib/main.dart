import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(myApp());
}

Widget myApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  );
}
