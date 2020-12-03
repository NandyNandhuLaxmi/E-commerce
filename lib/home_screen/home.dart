import 'package:badges/badges.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm_adhoc/home_screen/offers.dart';
import 'package:ecomm_adhoc/home_screen/profile.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cart.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1300,
          minWidth: 550,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerAdSlider = [
    "Assets/images/banner1.jpg",
    "Assets/images/banner2.jpg",
    "Assets/images/banner3.jpg",
    "Assets/images/banner4.jpg",
    "Assets/images/banner5.jpg",
    "Assets/images/banner6.jpg",
    "Assets/images/banner7.jpg",
  ];

  

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  int _counter = 0;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: drawerKey,
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
        bottom: PreferredSize(
          preferredSize: Size(50, 50),
          child: Container(
            height: 42.8,
            margin: const EdgeInsets.all(7.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                suffixIcon: Icon(EvaIcons.listOutline, color: Color(0xFF000000),),
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontFamily: 'Roboto'),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black, width: 1.2))),
            ),
          ),
        ),
        backgroundColor: Color(0xFF008ECC),
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
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
          Badge(
            position: BadgePosition.topEnd(top: 5, end: 8),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(_counter.toString(), style: TextStyle(color: Colors.white),),
            child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
         )
          
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Container(
                child: FlatButton(
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return profile();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'CREATE ACCOUNT',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF008ECC),
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
               backgroundColor: 
                 Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                          child: SvgPicture.asset('Assets/icons/user.svg', height: 40, width: 40, color: Color(0xFF008ECC), allowDrawingOutsideViewBox: true,),
              ),
              accountEmail: null,
            ),
            ListTile(
              title: new Text('Home', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              leading: SvgPicture.asset(
                'Assets/icons/home.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('home');
              },
            ),
            ListTile(
              title: new Text('Shop by Category', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => offers()),
                );
              },
            ),
            ListTile(
              title: new Text('My Orders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart_fill()),
                );
              },
            ),
            ListTile(
              title: new Text('My Account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_screen()),
                );
              },
            ),
            ListTile(
              title: new Text('My Subscription', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              leading: SvgPicture.asset(
                'Assets/icons/renew.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
            ),
            ExpansionTile(
              title: new Text('Help and Setting', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              children: [
                ListTile(
                  title: new Text('Customer Service', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
                  leading: SvgPicture.asset(
                    'Assets/icons/support.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: new Text('Sign In', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              leading: SvgPicture.asset(
                'Assets/icons/in.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/restaurant_screen');
              },
            ),
          ],
        ),
      ),
      body: FooterView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(
                // height: 70,
                // child: ListView(
                // scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // children: <Widget>[
                // CategoryItem(
                // icon: EvaIcons.giftOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFFffe291),
                // ),
                // CategoryItem(
                // icon: EvaIcons.headphonesOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFF91bfff),
                // ),
                // CategoryItem(
                // icon: EvaIcons.hardDriveOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFFff91c1),
                // ),
                // CategoryItem(
                // icon: EvaIcons.printerOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFF5340de),
                // ),
                // CategoryItem(
                // icon: EvaIcons.videoOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFF47e6a9),
                // ),
                // CategoryItem(
                // icon: EvaIcons.umbrellaOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFFff788e),
                // ),
                // CategoryItem(
                // icon: EvaIcons.tvOutline,
                // size: 70,
                // margin: EdgeInsets.only(
                // left: 10,
                // ),
                // padding: EdgeInsets.all(10),
                // backgroundColor: Color(0xFFff9378),
                // ),
                // ],
                // ),
                // ),

                SizedBox(
                  height: 05,
                ),
                // banner ad slider

                //CarouselSlider(
                //options: CarouselOptions(
                //aspectRatio: 16 / 9,
                //autoPlay: true,
                //),
                //items: bannerAdSlider.map((i) {
                //return Builder(
                //builder: (BuildContext context) {
                //return Container(
                //width: MediaQuery.of(context).size.width,
                //margin: EdgeInsets.symmetric(horizontal: 10.0),
                //child: Image(
                //image: AssetImage(i),
                //fit: BoxFit.cover,
                //alignment: Alignment.topCenter,
                //),
                //);
                //},
                //);
                //}).toList(),
                //),

                SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Carousel(
                      boxFit: BoxFit.cover,
                      images: [
                        ExactAssetImage("Assets/images/banner1.jpg"),
                        ExactAssetImage("Assets/images/banner2.jpg"),
                        ExactAssetImage("Assets/images/banner3.jpg"),
                        ExactAssetImage("Assets/images/banner4.jpg"),
                        ExactAssetImage("Assets/images/banner5.jpg"),
                        ExactAssetImage("Assets/images/banner6.jpg"),
                        ExactAssetImage("Assets/images/banner7.jpg"),
                      ],
                      dotBgColor: Colors.transparent,
                      dotSize: 5.0,
                      dotSpacing: 10.0,
                      dotColor: Colors.grey,
                    )),

                SizedBox(
                  height: 20,
                ),

                Container(
                  color: Colors.white,
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Shop from Top Categories",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                       Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 130,
                                  margin: const EdgeInsets.all(3),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage('Assets/images/Groceries.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  'Groceries',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 130,
                                  margin: const EdgeInsets.all(3),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage('Assets/images/Corvid_Essentials.webp'),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  'Covid Essentials',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 130,
                                  margin: const EdgeInsets.all(3),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage('Assets/images/Fruits&Vegetables.jfif'),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  'Fruits & Veget..',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 130,
                                  margin: const EdgeInsets.all(3),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage('Assets/images/Tea.jfif'),
                                          fit: BoxFit.cover)),
                                ),
                                Text('Tea',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 130,
                                  margin: const EdgeInsets.all(3),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage('Assets/images/biscuit&Cookies.jfif'),
                                          fit: BoxFit.cover)),
                                ),
                                Text('Biscuit & Cookies',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 130,
                                  margin: const EdgeInsets.all(3),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage('Assets/images/Flours.jfif'),
                                          fit: BoxFit.cover)),
                                ),
                                Text('Flours & Sooji ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ],
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
                    ],
                  ),
                ),
                    ],
                  ),
                  
                ),

                
                SizedBox(
                  height: 10,
                ),

                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Top Deals",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Text(
                                "VIEW ALL",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => offers(),
                                    fullscreenDialog: false,
                                  ),
                                );
                              },
                            ),
                          )
                        ],
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
                    ],
                  ),
                ),
              
                SizedBox(
                  height: 10,
                ),

                SizedBox(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: Carousel(
                      boxFit: BoxFit.cover,
                      images: [
                        ExactAssetImage("Assets/images/banner8.jpg"),
                        ExactAssetImage("Assets/images/banner9.jpg"),
                      ],
                      dotBgColor: Colors.transparent,
                      dotSize: 4.0,
                      dotSpacing: 10.0,
                      dotColor: Colors.grey,
                    )),

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shop Groceries",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  )
                ),

                SizedBox(height: 6.0,),


                // banner ad slider

                Container(
                  color: Color(0xFFbce1fe),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        margin: const EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('Assets/images/saffola-peppy-tomato-masala.jpg'), fit: BoxFit.contain)),
                                      ),
                                      Row(
                                        children: [
                                          Text('UP TO', style: TextStyle(color: Color(0xFF17a2b8), fontWeight: FontWeight.bold, fontSize: 20),),
                                          SizedBox(width: 2.0),
                                          Text('30 %OFF', style: TextStyle(color: Color(0xFF6610f2), fontWeight: FontWeight.bold, fontSize: 20),),
                                        ],
                                      ),
                                      
                                      Text('DALS & PULSES', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
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
                                padding: const EdgeInsets.all(12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        margin: const EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('Assets/images/saffola-peppy-tomato-masala.jpg'), fit: BoxFit.contain)),
                                      ),
                                      Row(
                                        children: [
                                          Text('UP TO', style: TextStyle(color: Color(0xFF17a2b8), fontWeight: FontWeight.bold, fontSize: 20),),
                                          SizedBox(width: 2.0),
                                          Text('10 %OFF', style: TextStyle(color: Color(0xFF6610f2), fontWeight: FontWeight.bold, fontSize: 20),),
                                        ],
                                      ),
                                      
                                      Text('SALT, SUGAR', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
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

                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        margin: const EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('Assets/images/saffola-peppy-tomato-masala.jpg'), fit: BoxFit.contain)
                                            ),
                                      ),
                                      Row(
                                        children: [
                                          Text('UP TO', style: TextStyle(color: Color(0xFF17a2b8), fontWeight: FontWeight.bold, fontSize: 20),),
                                          SizedBox(width: 2.0),
                                          Text('25 %OFF', style: TextStyle(color: Color(0xFF6610f2), fontWeight: FontWeight.bold, fontSize: 20),),
                                        ],
                                      ),
                                      
                                      Text('ATTA & SOOJI', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
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
                                padding: const EdgeInsets.all(12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        margin: const EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('Assets/images/saffola-peppy-tomato-masala.jpg'), fit: BoxFit.contain)),
                                      ),
                                      Row(
                                        children: [
                                          Text('UP TO', style: TextStyle(color: Color(0xFF17a2b8), fontWeight: FontWeight.bold, fontSize: 20),),
                                          SizedBox(width: 2.0),
                                          Text('30 %OFF', style: TextStyle(color: Color(0xFF6610f2), fontWeight: FontWeight.bold, fontSize: 20),),
                                        ],
                                      ),
                                      
                                      Text('COOKING OIL', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
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



                      Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        margin: const EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('Assets/images/saffola-peppy-tomato-masala.jpg'), fit: BoxFit.contain)),
                                      ),
                                      Row(
                                        children: [
                                          Text('UP TO', style: TextStyle(color: Color(0xFF17a2b8), fontWeight: FontWeight.bold, fontSize: 20),),
                                          SizedBox(width: 2.0),
                                          Text('30 %OFF', style: TextStyle(color: Color(0xFF6610f2), fontWeight: FontWeight.bold, fontSize: 20),),
                                        ],
                                      ),
                                      
                                      Text('PERSONAL CARE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
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
                                padding: const EdgeInsets.all(12.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        margin: const EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('Assets/images/saffola-peppy-tomato-masala.jpg'), fit: BoxFit.contain)),
                                      ),
                                      Row(
                                        children: [
                                          Text('UP TO', style: TextStyle(color: Color(0xFF17a2b8), fontWeight: FontWeight.bold, fontSize: 20),),
                                          SizedBox(width: 2.0),
                                          Text('20 %OFF', style: TextStyle(color: Color(0xFF6610f2), fontWeight: FontWeight.bold, fontSize: 20),),
                                        ],
                                      ),
                                      
                                      Text('BATH & HANDWASH', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
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
                           
                      SizedBox(height: 10,),

                     
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Top Deals for You",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                InkWell(
                  child: Container(
                    height: 160,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: new AssetImage('Assets/images/poster1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return offers();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                InkWell(
                  child: Container(
                    height: 160,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: new AssetImage('Assets/images/poster2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return offers();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(
                  height: 15,
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Best Deals for You",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                InkWell(
                  child: Container(
                    height: 160,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: new AssetImage('Assets/images/poster3.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return offers();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                InkWell(
                  child: Container(
                    height: 160,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: new AssetImage('Assets/images/poster4.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return offers();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(
                  height: 15,
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Exclusive Deals for You",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                InkWell(
                  child: Container(
                    height: 160,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: new AssetImage('Assets/images/poster5.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return offers();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                InkWell(
                  child: Container(
                    height: 160,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: new AssetImage('Assets/images/poster6.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return offers();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
        footer: new Footer(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
              child: Text('2021 All rights reverved, Ecommerce Adhoc', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))
            )
          )
      ),
    );
  }

  createWishListItem() {
    return Container(
      // height: 220,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade100)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey,
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
                      fontSize: 15),
                ),
                SizedBox(width: 5),
                Text(
                  "\$115.00",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "Save \$ 38.33",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold ,fontSize: 13),
            ),
          ),
          SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "Parle-G Gold \nBisuits 1KG",
              style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 35,
            width: 140,
            // margin: EdgeInsets.all(4),
              child: Container(
                padding: const EdgeInsets.all(5.0),  
                decoration: BoxDecoration(
                  color: Color(0xFF008ECC),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(2),
                child: Row(
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
                      height: 28,
                      width: 28,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(1.0),
                        child: RaisedButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          color: Color(0xFF1B9AD1),
                          child: Icon(Icons.add, size: 17, color: Colors.white,),
                            onPressed: () {
                            setState(() {
                              _counter++;
                              // doMult();
                            });
                            }, 
                        ),
                      )
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

