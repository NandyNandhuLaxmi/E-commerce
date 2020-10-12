import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm_adhoc/home_screen/offers.dart';
import 'package:ecomm_adhoc/home_screen/profile.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
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

  List<Product> products = [
    Product(
        image: "Assets/images/amul-pasteurised-butter-500.jpeg",
        description:
            "Who doesn't like a chunk of creamy, velvety, smooth and mouth-watering butter? Made with fresh ingredients, Amul Pasteurised Butter is a multi-purpose butter that can be used as a spread on bread, paratha, roti, naan and sandwiches. It also makes an excellent topping for Pav-bhaji, dal, soups, salads, rice as well as a great cooking medium for butter Paneer, Dal Makhni and a variety of delightful recipes. So what are you waiting for? Buy this product online today!",
        price: "218.00",
        productName: "Amul Pasteurised Butter"),
    Product(
        image: "Assets/images/trust-classic-sulphurless-sugar.jpeg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "46.00",
        productName: "Trust Classic Sulphurless Sugar 1 kg"),
    Product(
        image: "Assets/images/kohinoor-charminar-select-basmati-rice.jpeg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "395.00",
        productName: "Kohinoor Basmati Rice 5 kg"),
    Product(
        image: "Assets/images/surti-kolam-rice-10.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "539.00",
        productName: "Surti Kolam Rice 10 kg"),
    Product(
        image: "Assets/images/eveready-red-1015-aa-carbon-zinc-batteries.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "109.00",
        productName: "Eveready Red 1015 (Pack of 10)"),
    Product(
        image: "Assets/images/durex-extra-thin-condoms-10-pcs.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "148.00",
        productName: "Durex Extra Thin Condoms 10 pcs"),
    Product(
        image: "Assets/images/amul-lite-milk-fat-spread-500gm.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "63.00",
        productName: "Amul Masti Dahi 1 kg (Pouch)"),
    Product(
        image: "Assets/images/moov-pain-relief-specialist-spray-35.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "135.85",
        productName: "Moov Pain Relief Specialist Spray 35 g"),
    Product(
        image: "Assets/images/moov-pain-relief-cream.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "148.25",
        productName: "Moov Pain Relief Cream 50 g"),
    Product(
        image: "Assets/images/monster-energy-drink-350.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "73.47",
        productName: "Monster Energy Drink 350 ml (Can)"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

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
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
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
          IconButton(
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
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Username',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/profile.jfif')
              ),
              accountEmail: null,
            ),
            ListTile(
              title: new Text('Home'),
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
              title: new Text('Shop by Category'),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
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
            ListTile(
              title: new Text('My Orders'),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
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
            ListTile(
              title: new Text('My Account'),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
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
            ListTile(
              title: new Text('My Subscription'),
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
              title: new Text('Help and Setting'),
              children: [
                ListTile(
                  title: new Text('Customer Service'),
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
              title: new Text('Sign In'),
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //SizedBox(
              //height: 70,
              //child: ListView(
              //scrollDirection: Axis.horizontal,
              //shrinkWrap: true,
              //children: <Widget>[
              //CategoryItem(
              //icon: EvaIcons.giftOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFFffe291),
              //),
              //CategoryItem(
              //icon: EvaIcons.headphonesOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFF91bfff),
              //),
              //CategoryItem(
              //icon: EvaIcons.hardDriveOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFFff91c1),
              //),
              //CategoryItem(
              //icon: EvaIcons.printerOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFF5340de),
              //),
              //CategoryItem(
              //icon: EvaIcons.videoOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFF47e6a9),
              //),
              //CategoryItem(
              //icon: EvaIcons.umbrellaOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFFff788e),
              //),
              //CategoryItem(
              //icon: EvaIcons.tvOutline,
              //size: 70,
              //margin: EdgeInsets.only(
              //left: 10,
              //),
              //padding: EdgeInsets.all(10),
              //backgroundColor: Color(0xFFff9378),
              //),
              //],
              //),
              //),

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
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
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
                        Column(
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
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
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
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
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
                              'Fruits & Vegetables',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
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
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
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
                                    fontWeight: FontWeight.bold)),
                          ],
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
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "VIEW ALL",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.red,
                                ),
                              ],
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
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
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
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
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
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
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
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
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

              SizedBox(
                height: 10,
              ),

              
              Container(
                width: 500,
                height: 30.8,
                color: Colors.white10,
                child: Center(child: Text('2020 All rights reserved, Ecommerce Adhoc', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 11),))
              )
            ],
          ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  final Product product;

  ProductPage({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ecommerce',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  product.productName,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Hero(
                tag: product.image,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image(
                    image: AssetImage(product.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "You Save 36.87",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: <Widget>[
                    Text(
                      "${product.price}\$",
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
                    SizedBox(width: 4),
                    Text(
                      "(No all. of TAX)",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: OutlineButton.icon(
                        icon: Icon(EvaIcons.shoppingBagOutline),
                        label: Text("Cart"),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RaisedButton.icon(
                        textColor: Colors.black,
                        color: Colors.blue,
                        icon: Icon(EvaIcons.creditCard),
                        label: Text("Buy Now"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.all(4.0),
                    child: Text(
                      'Descriptions',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.all(4.0),
                    child: Text(
                      product.productName,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String productName;
  final String image;
  final String price;
  final String description;

  Product(
      {@required this.description,
      @required this.image,
      @required this.price,
      @required this.productName});
}

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final IconData icon;

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  CategoryItem(
      {@required this.backgroundColor,
      @required this.size,
      @required this.icon,
      @required this.margin,
      @required this.padding,
      this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: padding,
      margin: margin,
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
