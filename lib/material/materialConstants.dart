

import 'dart:io';

import 'package:flutter/material.dart';


const kPrimaryColor = Color(0xFF5638f7);
const kSecondaryColor = Color(0xFF2acde3);
const kShadowColor = Color.fromRGBO(72, 76, 82, 0.16);
const kBackgroundColor = Color(0xFFE7EEFB);
const kSidebarBackgroundColor = Color(0xFFF1F4FB);
const kCardPopupBackgroundColor = Color(0xFFF5F8FF);
const kPrimaryLabelColor = Color(0xFF242629);
const kSecondaryLabelColor = Color(0xFF797F8A);
const kCourseElementIconColor = Color(0xFF17294D);



var kBodyTextStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontSize: 15.0,
  
  );

var kCardDescriptionTextStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontSize: 15.0,
  
  );


  var kCardTitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 22.0,
  decoration: TextDecoration.none,
);
var kTitle2Style = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kHeadlineLabelStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w800,
  color: kPrimaryLabelColor,
  fontFamily: 'SF Pro Text',
  decoration: TextDecoration.none,
);
var kSubtitleStyle = TextStyle(
  fontSize: 16.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kActionTextStyle = TextStyle(
  fontSize: 15.0,
  color: kPrimaryColor,
  fontWeight: FontWeight.w600,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);