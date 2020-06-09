import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
      body: details('assets/profilepic.png', 'NAME', '1234567890', 'Address'),
    ));
  }
}

details(img, name, phonenumber, address) {
  return Center(
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('$img'),
          backgroundColor: Colors.grey[300],
          radius: 60,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
            height: 150,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(

                  //         decoration: BoxDecoration(

                  //             borderRadius: BorderRadius.circular(10.0)),
                  //       ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 30),
                          Text(
                            "$name",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "$phonenumber",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "$address",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                            maxLines: 4,
                          ),
                          SizedBox(height: 10.0),
                        ]),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.blueGrey,
                    onPressed: () {},
                  )
                ],
              ),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 60,
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('MANAGE ADDRESSES',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.blueGrey,
                  iconSize: 10,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 60,
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('FAVOURITES',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.blueGrey,
                  iconSize: 10,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    ]),
  );
}
