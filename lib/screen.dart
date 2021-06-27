import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe/main.dart';

import 'screen2.dart';

const kstext =
    TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold);
const kstext2 =
    TextStyle(color: Colors.black12, fontSize: 18, fontWeight: FontWeight.bold);

class Screen extends StatelessWidget {
  const Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.92),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 26, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Best Recipe\nFor Cooking',
                    style: kstext,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  search(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Category(
                            text: 'All',
                            colors: Colors.green,
                            tcolor: Colors.white,
                          ),
                          Category(
                            text: 'Sushi',
                            colors: Colors.white,
                            tcolor: Colors.black12,
                          ),
                          Category(
                            text: 'Burger',
                            colors: Colors.white,
                            tcolor: Colors.black12,
                          ),
                          Category(
                            text: 'Pizza',
                            colors: Colors.white,
                            tcolor: Colors.black12,
                          ),
                          Category(
                            text: 'Soup',
                            colors: Colors.white,
                            tcolor: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Dishes(img: 'assets/scren.jpg',),
                        Dishes(img: 'assets/scren2.jpg',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0.0,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.black12,
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.black12,
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black12,
                    size: 30,
                  ),
                  label: 'Home')
            ]),
      ),
    );
  }
}

class Dishes extends StatelessWidget {
  final String img;
  const Dishes({
    Key key,this.img
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0,top: 6,right: 24.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2(),),);
                      },
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 170),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Solman Sushi',style: kftext,),
                  Text('Macha',style: kftext,),
                  Text('12 ingredients | 40 Min',style: kftext2,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class search extends StatelessWidget {
  const search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.6,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search Destination',
                    style: kstext2,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 26,
          ),
          Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.filter_alt_outlined,
              color: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String text;
  final Color colors;
  final Color tcolor;
  const Category({Key key, this.text, this.colors, this.tcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22.0),
      child: Container(
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10)),
        height: 50,
        width: 90,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: tcolor, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
