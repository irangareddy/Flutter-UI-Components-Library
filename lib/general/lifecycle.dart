import 'package:Flutter_UI_Components_Library/material/materialConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LifeCycle extends StatefulWidget {
  @override
  _LifeCycleState createState() {
    print("Create State");
    return _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> with WidgetsBindingObserver {
  int step = 0;
  List<Widget> _processes = [];

  @override
  void initState() {
    print("Init State");
    super.initState();
    setState(() {
      step += 1;
      _processes.add(_createTile(stepNo: step, location: "Init State"));
    });

    WidgetsBinding.instance.addObserver(this);
  }

  Widget _createTile({int stepNo, String location}) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Color(0xFFf7f7f7),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xFF1ee43b),
            radius: 20.0,
            child: Text(stepNo.toString(), style: kHeadlineLabelStyle),
          ),
          title: Text(location),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("Updated Dispose Also");
    setState(() {
      step += 1;
      _processes.add(_createTile(stepNo: step, location: "Dispose"));
    });

    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("$state");
    setState(() {
      step += 1;
      _processes.add(_createTile(stepNo: step, location: "$state"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: Color(0xFFdfe3ee),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text("App LifeCycle"),
                trailing: logo(),
              )
            ];
          },
          body: ListView.builder(
            padding: const EdgeInsets.all(0.0),
            itemCount: _processes.length,
            itemBuilder: (context, index) {
              return _processes[index];
            },
          ),
        ),
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
