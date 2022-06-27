// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'arttile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          icon: Icon(Icons.eco),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_add),
          label: '',
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "FIND THE BEST ART FOR YOUR",
                style: TextStyle(fontSize: 48),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your ART ...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: explore(),
            ),
             SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  artTile(
                      artImag: "images/cart1.jpg",
                      artName: "The Flower - DTIYS Justine Cunha",
                      artSub:
                          'The second legendary character we designed for the Legend Of Atlantis Nft project.',
                      artPrice: '18.00',
                    ),
                    artTile(
                      artImag: "images/cart2.jpg",
                      artName: "Legends of Atlantis CLASSIC",
                      artSub:
                          'The second legendary character we designed for the Legend Of Atlantis Nft project.',
                      artPrice: '15.00',
                    ),
                    artTile(
                      artImag: "images/cart3.jpg",
                      artName: "IAMAG MASTER CLASS",
                      artSub:
                          'The second legendary character we designed for the Legend Of Atlantis Nft project.',
                      artPrice: '20.00',
                    ),
                    artTile(
                      artImag: "images/cart1.jpg",
                      artName: "The Flower - DTIYS Justine Cunha",
                      artSub:
                          'The second legendary character we designed for the Legend Of Atlantis Nft project.',
                      artPrice: '18.00',
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  explore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Trend...",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Text(
          "See More",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.normal, color: Colors.red),
        ),
      ],
    );
  }
}
