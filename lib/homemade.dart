import 'package:flutter/material.dart';
import 'package:homemade/feedback.dart';
import 'filters.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'account.dart';
import 'about.dart';
import 'notification.dart';
import 'feedback.dart';
import 'pastorder.dart';

class Homemade extends StatefulWidget {
  @override
  _HomemadeState createState() => _HomemadeState();
}

class _HomemadeState extends State<Homemade> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownValue = 'Sort';
  List<String> dropdownItems = <String>[
    'Sort',
    'Distance',
    'Popularity',
    'Ratings: High to Low',
    'Cost: High to Low',
    'Cost: Low to High'
  ];

  int i = 2;

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('8088230275'),
      decoration: BoxDecoration(
        color: Colors.redAccent[700],
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
            title: Text('My Account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            }),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
            title: Text('Switch to Chef mode'),
            onTap: () {} //=> Navigator.of(context).push(_NewPage(2)),
            ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text('Past Orders'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PastOrder()),
            );
          },
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text('Notifications'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifications()),
            );
          },
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text('Feedback'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Feedbacks()),
            );
          },
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text('About'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => About()),
            );
          },
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text('Logout'),
          onTap: () {},
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        endDrawer: Drawer(
          child: drawerItems,
        ),
        body: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                ClipPath(
                  clipper: MyClip(),
                  child: Container(
                    height: 200.0,
                    color: Colors.redAccent[700],
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "Welcome to Local Kitchen!",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                      fontFamily: 'Pacifico'),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.menu),
                                color: Colors.white,
                                iconSize: 30,
                                onPressed: () =>
                                    scaffoldKey.currentState.openEndDrawer(),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            height: 45.0,
                            margin: EdgeInsets.symmetric(
                                horizontal: 34.0, vertical: 30.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Search for the best home kitchens",
                                hintStyle: TextStyle(color: Colors.grey[700]),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 14.0),
                                suffixIcon: Icon(
                                  FontAwesomeIcons.search,
                                  size: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.redAccent[700],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text(
                                'My location',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[700]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.redAccent[700],
                            ),
                            iconSize: 36,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: dropdownItems
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            elevation: 1,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Filter()),
                              );
                            },
                            child: Row(
                              children: [
                                const Text('Filter',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                                Icon(
                                  Icons.grain,
                                  color: Colors.redAccent[700],
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.wb_sunny,
                                color: (i % 2 == 0)
                                    ? Colors.redAccent[700]
                                    : Colors.black),
                            onPressed: () {
                              ++i;
                            }),
                      ]),
                ),
                Container(
                  height: 200,
                  width: 350,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      'assets/First.jpg',
                      'assets/Second.jpg',
                      'assets/Ind1.png',
                      'assets/Amer1.png',
                      'assets/Mex1.png',
                      'assets/Th1.png'
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('$i'),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                getSmallItem('assets/food.jpg', 'Shopname', 'Address', '5', 'OPEN')
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class MyClip extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 50.0);
    path.quadraticBezierTo(
        size.width - 70.0, size.height, size.width / 2, size.height - 20);
    path.quadraticBezierTo(size.width / 3.0, size.height - 32, 0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

getSmallItem(img, name, address, ratings, status) {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Card(
      child: Row(
        children: <Widget>[
          Container(
            child: InkWell(
              onTap: () {},
            ),
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          SizedBox(width: 10.0),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "$name",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(height: 5.0),
              Text(
                "$address",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  "$status",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ratings: $ratings",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

