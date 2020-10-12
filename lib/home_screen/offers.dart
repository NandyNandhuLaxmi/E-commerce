import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ecomm_adhoc/home_screen/cart.dart';
import 'package:ecomm_adhoc/home_screen/home.dart';
import 'package:ecomm_adhoc/home_screen/products.dart';
import 'package:ecomm_adhoc/home_screen/profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                      'Groceries',
                       style: TextStyle(color: Colors.black, fontSize: 16),
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
                                        child: Text('Fruits &\nVegetables', style: TextStyle(fontSize: 12),),
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
                                              image: AssetImage('Assets/images/Diary&Biscuit.jfif'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Text('Dairy & Bakery', style: TextStyle(fontSize: 12),),
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
                                        child: Text('Staples', style: TextStyle(fontSize: 12),),
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
                                        child: Text('Snacks &\nBranded Foods', style: TextStyle(fontSize: 12),),
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
                                        child: Text('Personal \nCare', style: TextStyle(fontSize: 12),),
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
                                        child: Text('Home Care', style: TextStyle(fontSize: 12),),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "34 products",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 38,
                    width: 131.8,
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(8.0),
                    child: new RaisedButton(
                      color: Colors.white,
                        child: Row(
                          children: [
                            Icon(Icons.filter_list, color: Colors.black,),
                            Text(
                              'Sort | Filter',
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                        onPressed: () => _sortfilter(context)),
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
                        backgroundColor: Colors.blue,
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
                  width: 80,
                  height: 80,
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
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "\$299.00",
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
                        Container(
                          height: 25,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.all(4),
                          child: RaisedButton(
                            child: Text(
                              "ADD",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            color: Colors.blue,
                            textColor: Colors.black,
                            splashColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => cart()),
                              );
                            },
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
  Alert(
    context: context,
    title: 'Sort By',
    content: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(3.0),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Popularity',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'High to Low',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Low to High',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Discount',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Done",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Sort Added", toastLength: Toast.LENGTH_SHORT);
          Navigator.of(context).pop();
        },
        width: 120,
      ),
      DialogButton(
        child: Text(
          "Close",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Color(0xffff2d22),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}
