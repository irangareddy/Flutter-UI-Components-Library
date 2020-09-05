import 'package:Flutter_UI_Components_Library/material/materialConstants.dart';
import 'package:flutter/material.dart';

class BannerScreen extends StatefulWidget {
  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  bool showBanner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Material Banner"),
        centerTitle: false,
      ),
      body: SafeArea(
          child: Column(
        children: [
          if (showBanner)
            MaterialBanner(
              leading: CircleAvatar(
                backgroundColor: kPrimaryColor,
                child: Icon(
                  Icons.subscriptions,
                  color: Colors.white,
                ),
              ),
              content: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('WEEKLY RUNDOWN:',style: kHeadlineLabelStyle),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text('''
The case for a six-hour workday, An office model that suits everyone?, and other top news for you''',
                          style: kBodyTextStyle.copyWith(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              actions: [
                FlatButton(
                  child: Text(
                    'DISMISS',
                    style: kActionTextStyle,
                  ),
                  onPressed: () {
                    _toggleBanner();
                  },
                ),
                FlatButton(
                  child: Text('VIEW', style: kActionTextStyle),
                  onPressed: () {
                    _toggleBanner();
                  },
                ),
              ],
            ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  _toggleBanner();
                },
                child: Text(
                  'Toggle Banner',
                  style: kActionTextStyle,
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      )),
    );
  }

  void _toggleBanner() {
    setState(() {
      showBanner = !showBanner;
    });
  }
}

