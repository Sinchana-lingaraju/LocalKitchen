import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  
   
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      
    body: Column(
      children:[

      
        orders('assets/food.jpg','SHOPNAME','Address','Foodname',100),
        
        SizedBox(height: 10),
        
                      billdetails(100,20),
                      SizedBox(height:15),
          GestureDetector(
                  onTap: () {
 
                  },
                   
            
                  
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [ Colors.red[900],
                                      Colors.red[500],
                                      Colors.red[900]
                                     ],
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'PROCEED TO PAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
      ]
    )
    ));
     
      
    
  }
}
orders(img,shopname,address,foodname,cost){
    var i = 1;
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
    children: [
      Row(
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
                   // borderRadius: BorderRadius.circular(10.0)
                   ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "$shopname",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "$address",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  )
                ],
              )),
              
            ],
          ),
          SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                 Text(
                      "$foodname",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                   // borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: 40.0,
                  height: 65.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              i++;
                            },
                            child: Icon(Icons.keyboard_arrow_up,
                                color: Color(0xFFD3D3D3))),
                        Text(
                          '$i',
                          style: TextStyle(fontSize: 10.0, color: Colors.black),
                        ),
                        InkWell(
                            onTap: () {
                              if(i>0)
                              i--;
                            },
                            child: Icon(Icons.keyboard_arrow_down,
                                color: Color(0xFFD3D3D3))),
                      ],
                    ),
                  ),
                ),
                 Text(
                      "$cost",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),

                    
              ]
            ),
          ),
          Divider(
  
            thickness: 1,
            color: Colors.grey,
        
),
    ],
      ),
  );

}
billdetails(cost,deliveryfee){
int total = cost + deliveryfee;
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Container(
      child: Column(
        children: [
          Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(children: [
                      Text('BILL DETAILS',
                  style: TextStyle(
                      fontSize: 15,
                      
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                
                Text(
                                    'Item Total',
                                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                                  ),
                                   Text(
                                    '$cost',
                                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                                  ),
             ],),
             SizedBox(height:10),
             Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                
                Text(
                                    'Delivery Fee',
                                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                                  ),
                                   Text(
                                    '$deliveryfee',
                                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                                  ),
             ],),
             Divider(
  
                    thickness: 1,
                    color: Colors.grey,
              
),
 Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                
                Text(
                                    'To Pay',
                                    style: TextStyle(fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.bold),
                                    
                                  ),
                                   Text(
                                    '$total',
                                    style: TextStyle(fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.bold),
                                  ),
             ],),
             SizedBox(height:15),
             
            ],
             
            ),
                  ),
          ),
           
        ],
      ),
    ),
  );
 
}
