
import 'package:Flutter_UI_Components_Library/general/lifecycle.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(OnePreview());
}

class OnePreview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeCycle()
    );
  }
}