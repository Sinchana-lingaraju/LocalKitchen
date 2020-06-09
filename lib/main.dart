import 'package:flutter/material.dart';

import 'chat.dart';
import 'cart.dart';
import 'homemade.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 0;
 GlobalKey _bottomNavigationKey = GlobalKey();
   

  @override
  Widget build(BuildContext context) {
     final List<Widget>pageOption = [
Homemade(),Cart(),Chat()
];
    return Scaffold(
      //appBar: ,
     
     body: pageOption[_page],

        bottomNavigationBar: CurvedNavigationBar(
        
          backgroundColor: Colors.white,
          color: Colors.redAccent[700],
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.local_dining, size: 30,),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.chat, size: 30),
            
          ],
          onTap:  onTabTapped, // new
            
        ),
        
        );
  }
        void onTabTapped(int index) {
   setState(() {
     _page = index;
   });
 }
  


}