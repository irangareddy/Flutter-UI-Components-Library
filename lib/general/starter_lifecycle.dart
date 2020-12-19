import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  @override
  _LifeCycleState createState() {
    return _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: Color(0xFFdfe3ee),
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                CupertinoSliverNavigationBar(
                  largeTitle: Text("App LifeCycle"),
                  trailing: logo(),
                )
              ];
            },
            body: Placeholder()),
      ),
    );
  }

  Widget logo() {
    return Container(
      height: 30.0,
      width: 30.0,
      child: Image.network(
          'https://learnyst.s3.amazonaws.com/assets/schools/2410/resources/images/logo_lco_t17sd.png'),
    );
  }
}
