import 'package:Flutter_UI_Components_Library/material/materialConstants.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Material Banner"),
        centerTitle: false,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              
              Text('data')
              ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Drawer',style: kBodyTextStyle.copyWith(color: Colors.black),),
        ),
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
                width: 100,
                height: 100,
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: NetworkImage('https://pbs.twimg.com/media/EdD4SvCU0AIG4Rm.jpg'),
                ),
            ),
        ],
      ),
    );
  }
}