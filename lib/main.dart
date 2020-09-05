
import 'package:flutter/material.dart';

import 'material/banner.dart';

void main() {
  runApp(OnePreview());
}

class OnePreview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BannerScreen()
    );
  }
}