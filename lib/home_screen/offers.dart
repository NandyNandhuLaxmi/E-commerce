import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ecomm_adhoc/home_screen/cart.dart';
import 'package:ecomm_adhoc/home_screen/home.dart';
import 'package:ecomm_adhoc/home_screen/products.dart';
import 'package:ecomm_adhoc/home_screen/profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class offers extends StatefulWidget {
  @override
  _offersState createState() => _offersState();
}

class _offersState extends State<offers> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart_fill()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Groceries',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => offers()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => offers()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => offers()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => offers()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => offers()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ),
    
    );
  }

  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

  createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/yummy.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Snactac Masala Instant Noodles 300 g",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 6.8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$299.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$115.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }
}

_sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 13, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
}

class fruitsVeg extends StatefulWidget {
  @override
  _fruitsVegState createState() => _fruitsVegState();
}

class _fruitsVegState extends State<fruitsVeg> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Fruits &\nVegetables',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => dairyBakery()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => staples()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => snacks()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => personalcare()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homecare()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
   
  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

   createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/Kiwi-5.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Imported Kiwi 5 pcs",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 6.8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$129.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$115.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }

  _sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
  }
}

class dairyBakery extends StatefulWidget {
  @override
  _dairyBakeryState createState() => _dairyBakeryState();
}

class _dairyBakeryState extends State<dairyBakery> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Dairy &\nBakery',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => dairyBakery()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => staples()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => snacks()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => personalcare()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homecare()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
   
  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

   createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/burger-bun.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Burger Bun With Sesame Seed 200 g",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 6.8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$27.90",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$30.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }

  _sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
  }
}

class staples extends StatefulWidget {
  @override
  _staplesState createState() => _staplesState();
}

class _staplesState extends State<staples> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Staples',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => dairyBakery()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => staples()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => snacks()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => personalcare()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homecare()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
   
  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

   createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/toor-arhar-dal.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Toor / Arhar Dal 2 kg",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 6.8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$222.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$280.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }

  _sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
  }
}

class snacks extends StatefulWidget {
  @override
  _snacksState createState() => _snacksState();
}

class _snacksState extends State<snacks> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Snacks &\nBranded Foods',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => dairyBakery()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => staples()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => snacks()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => personalcare()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homecare()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
   
  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

   createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/kellogg-s.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Kellogg's Corn Flakes 1.2 kg",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 6.8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$345.50",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$425.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }

  _sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
  }
}

class personalcare extends StatefulWidget {
  @override
  _personalcareState createState() => _personalcareState();
}

class _personalcareState extends State<personalcare> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Personal\nCare',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => dairyBakery()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => staples()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => snacks()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => personalcare()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homecare()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
   
  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

   createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/dabur-amla.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Dabur Amla Hair Oil 450 ml",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 6.8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$199.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$15.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }

  _sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
  }
}

class homecare extends StatefulWidget {
  @override
  _homecareState createState() => _homecareState();
}

class _homecareState extends State<homecare> {
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
            fontSize: 22,
            fontFamily: 'Roboto'
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Home Care',
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [   
                          InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Fruits&Vegetables(1).jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fruitsVeg()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => dairyBakery()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Staples.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Staples', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => staples()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Snacks.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => snacks()),
                                      );

                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Hair_care.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => personalcare()),
                                      );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 165,
                                  height: 58,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,  
                                        margin: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          image: DecorationImage(
                                              image: AssetImage('Assets/images/Herbal_Home.webp'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Home Care', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => homecare()),
                                      );
                                },
                              ),
                            ],
                          ),
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 52,
                      width: 125.8,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Container(
                          
                          child: Row(
                            children: [
                              IconButton(  
                                padding: const EdgeInsets.only(bottom: 3),
                                icon: Icon(EvaIcons.options2Outline, size: 18,), onPressed: null,),           
                                Text('Sort | Filter', style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 9.5),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _sortfilter(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: ButtonsTabBar(
                        backgroundColor: Color(0xFF008ECC),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: [
                          Tab(
                            text: "ALL",
                          ),
                          Tab(
                            text: "Deodorants",
                          ),
                          Tab(
                            text: "Juices", 
                          ),
                          Tab(
                            text: "Besan",
                          ),
                          Tab(
                            text: "Maida",
                          ),
                          Tab(
                            text: "Rawa/Sooji",
                          ),
                          Tab(
                            text: "Cheese",
                          ),
                          Tab(
                            text: "Cream Biscuit & Wafers",
                          ),
                          //Tab(text: "Dusttbin, Brooms & Dust Pans",),
                          //Tab(text: "Glucose & Milk Biscuit",),
                          //Tab(text: "Instant, hakka, cup noodles",),
                          //Tab(text: "Kitchen & Toilet Rolls",),
                          //Tab(text: "Milk, Wheat & bread",),
                          //Tab(text: "Sanitary Napkins",),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        ListView(
                          children: [
                            createlistView(),
                          ],
                        ),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                        //ListView(children: [createlistView(),],),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
   
  createlistView() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

   createCartListItem() {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('Assets/images/shubhkart-camphor.jpg'),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            "Shubhkart Camphor 50 g",
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$81.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.7,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$90.00",
                                style: TextStyle(
                                    color: Colors.black87,
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
                        Container(
                          height: 35,
                          width: 280,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(left: 195.0),
                          margin: EdgeInsets.all(4),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),  
                            decoration: BoxDecoration(
                              color: Color(0xFF008ECC),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "ADD",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                    ),
                                  ),
                                  Spacer(flex: 2),
                   
                                  Container(
                                    height: 22,
                                    width: 22,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.all(1.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.zero,
                                      shape: CircleBorder(),
                                      color: Color(0xFF1B9AD1),
                                      child: Icon(Icons.add, size: 17, color: Colors.white,),
                                      onPressed: () {
                                        // setState(() {
                                        //   _counter++;
                                        //   //doMult();
                                        // });
                                      }, 
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                        //Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => product_screen()),
        );
      },
    );
  }

  _sortfilter(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text('Sort & Filter By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Popularity',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Low to High',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 40,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'High to Low',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  color: Color(0xFFEBEBEB),
                  margin: const EdgeInsets.all(6.0),
                  child: new FlatButton(
                      child: Text(
                        'Discount',
                         style: TextStyle(color: Colors.black, fontSize: 12.5, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                ),
              ],
            ),
          )
  
        ],
      );
    });
  }
}