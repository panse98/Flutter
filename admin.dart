import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  int _currentIndex = 0;

  @override
  Admin createState() => Admin();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Admin Page',
         style: TextStyle(
          color:Colors.white)),
          centerTitle: true,
          backgroundColor: basicTheme().primaryColor,
        ),
        body: Center(
    child: _widgetOptions.elementAt(_currentIndex),),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: basicTheme().accentColor,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: basicTheme().primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_add_check),
                title: Text('Vote',
                style:TextStyle(
                    color: Colors.white,
                )),
                backgroundColor: basicTheme().primaryColor),
            BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
//    icon: Text('Confirm Order'),
                title: Text('Confirm Orders',
                style:TextStyle(
    color:Colors.white
    )),
                backgroundColor: basicTheme().accentColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile',
                style:TextStyle(color: Colors.white

    )),
                backgroundColor: basicTheme().primaryColor),



          ],
          onTap: (index) {
            _currentIndex = index;
            setState(() {});
          },
        ));
  }
}
const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Voting page',

  ),
  //write functions to be called here
  Text(
    'Index 1: Orders Confirmation Page',

  ),
  Text(
    'Index 2: Admin Profile Page',

  ),
];