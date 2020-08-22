// Follow me @irangareddy for more

import 'package:Flutter_UI_Components_Library/material/materialConstants.dart';
import 'package:flutter/material.dart';

const List<String> choices = <String>[
"Item 1",
"Item 2",
"Item 3",
];

class ContextMenu extends StatefulWidget {

  @override
  _ContextMenuState createState() => _ContextMenuState();
}

class _ContextMenuState extends State<ContextMenu> {

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  String _selectedChoices;

  void _select(String choice) {
    setState(() {
      _selectedChoices = choice;
    });
    showSnackBar(choice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Context Menu'),
        elevation: 0,
        centerTitle: false,
        backgroundColor: kPrimaryColor,
        actions: <Widget>[
          PopupMenuButton(
            onSelected: _select,
            padding: EdgeInsets.zero,
            // initialValue: choices[_selection],
            itemBuilder: (BuildContext context) {
              return choices.map((String choice) {
                return  PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
                
              );}

              ).toList();
            },
          )
        ],
        
      ),
      body: BodyWidget(selection: _selectedChoices),
    );
  }

void showSnackBar(String choice) {
    final snackBarContent = SnackBar(
            content: Text('Selected: $choice',style: kBodyTextStyle,),
            action: SnackBarAction(
              label: 'Undo',
              textColor: kSecondaryColor,
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
    _scaffoldkey.currentState.showSnackBar(snackBarContent);
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
    @required String selection,
  }) : _selection = selection, super(key: key);

  final String _selection;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _selection != null ? 
        Center(child: Text("Selected: $_selection",style: kBodyTextStyle,),) : 
        Center(child: Text("Welcome to Flutter UI Components Library",style: kBodyTextStyle,),),
      ],
    );
  }
}

