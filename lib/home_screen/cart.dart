import 'package:ecomm_adhoc/home_screen/profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ecommerce",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF008ECC),
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => cart()),
                (Route<dynamic> route) => true,
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            height: 500,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
                image: DecorationImage(
              image: AssetImage('Assets/images/empty_cart.webp'),
              fit: BoxFit.cover,
            )),
          ),
        ),
      ),
    );
  }
}

class cart_fill extends StatefulWidget {
  @override
  _cart_fillState createState() => _cart_fillState();
}

class _cart_fillState extends State<cart_fill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ecommerce",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF008ECC),
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => cart()),
                (Route<dynamic> route) => true,
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 28.8,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5.6),
            color: Color(0xFFF8F8F8),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Color(0xFF7A7A7A),),
                SizedBox(width: 4.8),
                Text('Deliver to 641024', style: TextStyle(color: Color(0xFF7A7A7A), fontSize: 12.0,),),
              ],
            )
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,  
                  alignment: Alignment.topLeft,              
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage('Assets/images/parle-g-gold-biscuits-1.jpeg'),
                      fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 15),
                  
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Parle-G Gold Biscuits 1 KG",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$76.67",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$115.00",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Save \$ 38.33",
                                style: TextStyle(
                                    color: Colors.green.shade500, fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220.0, top: 10.5),
                          child: CartCounter()
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Payment Details', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(12, 5, 2, 4 ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      'MRP Total',
                                       textAlign: TextAlign.left,
                                       style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.only(left: 260),
                                    child: Text(
                                      "\$76.60",
                                       textAlign: TextAlign.left,
                                       style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                                Divider(color: Colors.black, indent: 2, endIndent: 25,),
                                Row(
                                  children: [
                                    Container(
                                       alignment: Alignment.topLeft,
                                       padding: EdgeInsets.all(5.0),
                                       child: Text(
                                         'Discount',
                                         textAlign: TextAlign.left,
                                         style: TextStyle(
                                            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black,
                                         ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(left: 270),
                                        child: Text(
                                          "\$9.40",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                   
                                Divider(color: Colors.black, indent: 2, endIndent: 25,),
                                Row(
                                  children: [
                                    Container(
                                       alignment: Alignment.topLeft,
                                       padding: EdgeInsets.all(5.0),
                                       child: Text(
                                         "Total Amount",
                                         textAlign: TextAlign.left,
                                         style: TextStyle(
                                            fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black,
                                         ),
                                        ),
                                      ),
                                      Container(
                                         alignment: Alignment.topRight,
                                         padding: const EdgeInsets.only(left: 240),
                                         child: Text(
                                          "\$85.70",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ],
                                ),                              
                              ],
                            ),
                          ),
                      ]
                    ),
                  )
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.only(right: 40.0, bottom: 3.0),
                  child: Text('Save \$ 8.33', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green.shade500))
                )
              ]
            ),
          ),
          
        ]
      ), 
      bottomSheet: Container(
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('\$85.70', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
            ),
                    
            Container(
              width: 150,
              height: 40,
              padding: const EdgeInsets.all(5.0),

              child: RaisedButton(
                onPressed: toast,
                splashColor: Colors.blue[50],
                color: Color(0xFF1B9AD1),
                 child: Text(
                  "Place Order",
                   style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w600),
                 ),
                ),
            ),
          ],
        ),
      ),     
    );
  }
}

void toast() {
    Fluttertoast.showToast(
        msg: "updating",
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey
    );
  }


class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildRaisedButton(
          color: Color(0xFF1B9AD1),
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6, 
          ),
        ),
        buildRaisedButton(
            icon: Icons.add,
            color: Color(0xFF1B9AD1),
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildRaisedButton({IconData icon, Function press, Color color}) {
    return SizedBox(
      width: 22,
      height: 22,
      child: RaisedButton(
        padding: EdgeInsets.zero,
        shape: CircleBorder(),
        color: Color(0xFF1B9AD1),
        onPressed: press,
        child: Icon(icon, size: 15, color: Colors.white ),
      ),
    );
  }
}