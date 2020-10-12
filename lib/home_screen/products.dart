import 'package:ecomm_adhoc/home_screen/cart.dart';
import 'package:ecomm_adhoc/home_screen/offers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';



class product_screen extends StatelessWidget {
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ecommerce',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF008ECC),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Snactac Masala Instant Noodles 300 g',
                            style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black
                            ),
                          ),
                        ),
                        SizedBox(height: 5.7,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Noodles'.toUpperCase(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w800, color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Hero(
                    tag: NetworkImage,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image(
                        image: AssetImage('Assets/images/yummy.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "You Save 36.87",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF41A141),
                               ),
                            ),
                        ),
                        SizedBox(height: 5.7,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$ 299.00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                              SizedBox(width: 6.2),
                              Text(
                                "\$115.00",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "(Incl. of all taxes)",
                                style: TextStyle(
                                  color: Colors.black54,
                                    fontSize: 12,
                                ),
                               ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                  color: Color(0xFFECF8EC),
                  margin: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Inaugural Offer Free Shipping",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),   
               ],
              ), 
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Delivery',
                                  style: TextStyle(
                                    fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.7,),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(12, 10, 2, 0 ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(Icons.location_on, color: Colors.grey,),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '400020',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12, fontWeight: FontWeight.w800, color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          alignment: Alignment.topRight,
                                          padding: EdgeInsets.only(left: 210),
                                          child: FlatButton(
                                            onPressed: () {}, 
                                            child: Text(
                                              'CHECK',
                                              style: TextStyle(color: Colors.red, fontSize: 12),
                                             ), 
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(height: 0.8, color: Colors.black,indent: 12.0, endIndent: 12.0,),
                                  Container(
                                          alignment: Alignment.topLeft,
                                          padding: const EdgeInsets.fromLTRB(12, 10, 2, 10 ),
                                          child: Text('Delivery by 12 Oct, Monday', style: TextStyle(color: Color(0xFF41A141), fontStyle: FontStyle.italic, fontSize: 12, fontWeight: FontWeight.bold ))
                                        ),
                                ],
                              ),
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Offers',
                                  style: TextStyle(
                                    fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.7,),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(12, 5, 2, 4 ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(Icons.approval, color: Colors.green,),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            'Sodex Offer T&C Apply.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black,
                                            ),
                                          ),
                                        ),     
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(12, 2, 2, 2 ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(Icons.approval, color: Colors.green,),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            'Mobikwik - Flat Rs.50 /- SuperCash* on Min.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                           Container(
                             alignment: Alignment.topLeft,
                              child: Text('Description',
                                  style: TextStyle(fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                              ),
                            ),  
                            SizedBox(height: 11.8,),
                            Container(
                             alignment: Alignment.topLeft,
                              child: Text('Snacta Masala Instant Noodles 300 g',
                                  style: TextStyle(fontSize: 12.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                              ),
                            ),
                            SizedBox(height: 11.8,),
                            Container(
                             alignment: Alignment.topLeft,
                              child: Text('Filled with the goodness of milk & wheat, Noodles has been a source of all round nourishnmanet for nation the since decades',
                                  style: TextStyle(fontSize: 12.7, fontWeight: FontWeight.normal, color: Colors.black
                                  ),
                              ),
                            ),    
                          ],
                       ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Features & Details',
                                  style: TextStyle(
                                    fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.7,),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(12, 5, 2, 4 ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            'Instant noodles',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black,
                                            ),
                                          ),
                                        ),     
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Product Information',
                                  style: TextStyle(
                                    fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.7,),
                              Column(
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
                                                'Brand ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.topLeft,
                                              padding: EdgeInsets.only(left: 95.0),
                                              child: Text(
                                                'Snactac ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black,
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
                                                'Manufacturer',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.topLeft,
                                              padding: EdgeInsets.only(left: 60.0),
                                              child: Text(
                                                'Private Label',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),     
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Don't Forgot to Add",
                                  style: TextStyle(
                                    fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                  ),
                                ),
                              ),
                              InkWell(
                               child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(maxHeight: 200),
                                        child: ListView.builder(
                                          itemBuilder: (context, index) {
                                              return createWishListItem();
                                          },
                                          itemCount: 8,
                                          primary: false,
                                          scrollDirection: Axis.horizontal,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                          builder: (context) => offers(),
                                        ),
                                      );
                                    },
                                  ),
                        ]
                      ),
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                           alignment: Alignment.topLeft,
                              child: Text(
                                 "Product Rating ",
                                 style: TextStyle(
                                    fontSize: 15.7, fontWeight: FontWeight.bold, color: Colors.black
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                 alignment: Alignment.topLeft,
                                  child: Text('Rate Product',
                                      style: TextStyle(fontSize: 12.7, fontWeight: FontWeight.bold, color: Colors.black
                                      ),
                                  ),
                                ),
                                //SmoothStarRating(
                                  //allowHalfRating: false,
                                  //onRated: (v) {
                                  //},
                                  //starCount: 5,
                                  //rating: rating,
                                  //size: 40.0,
                                  //isReadOnly:true,
                                  //fullRatedIconData: Icons.blur_off,
                                  //halfRatedIconData: Icons.blur_on,
                                  //color: Colors.green,
                                  //borderColor: Colors.green,
                                  //spacing:0.0
                                //)

                              ],
                            ),
                              
                        ]
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        ),   
      ),
    );
  }

   createWishListItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade100)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(
                        "Assets/images/parle-g-gold-biscuits-1.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            flex: 70,
          ),
          SizedBox(height: 6),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: <Widget>[
                Text(
                  "\$76.67",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(width: 4),
                Text(
                  "\$115.00",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          //SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "Save \$ 38.33",
              style: TextStyle(color: Colors.red.shade400, fontSize: 10),
            ),
          ),
          //SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "Parle-G Gold Bisuits 1KG",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 15,
            margin: EdgeInsets.all(4),
            child: RaisedButton(
              child: Text(
                "ADD",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              color: Color(0xff008ecc),
              textColor: Colors.black,
              splashColor: Colors.white,
              onPressed: () { },
            ),
          ),
        ],
      ),
    );
  }
}
