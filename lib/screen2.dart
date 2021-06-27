import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/main.dart';
import 'screen.dart';

const kstext3 =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22);

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.92),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black12,
                    ),
                  ),
                  Text(
                    'Salmon Sushi',
                    style: kstext,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                        image: AssetImage('assets/scren2.jpg'),
                        fit: BoxFit.cover,
                      )),
                  child: Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.brown),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients (12)',
                    style: kstext3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1 Serving',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 1),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 268, minHeight: 56.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            ingredients(img: 'assets/matcha.png',title: 'Matcha',qt: '1 teaspoon',),
                            ingredients(img: 'assets/rice.png',title: 'Rice Bowl',qt: '200 gm',),
                            ingredients(img: 'assets/salmon.png',title: 'Salmon',qt: '200 gm',),
                            ingredients(img: 'assets/avocado.jpg',title: 'Avocado',qt: '50 gm',),
                            ingredients(img: 'assets/cucumber.png',title: 'Cucumber',qt: '1 pc',),
                            ingredients(img: 'assets/vinegar.jpg',title: 'Rice Vinegar',qt: '1 teaspoon',),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(left: 80,
                    bottom: 2,
                    child: Container(height: 50,width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(child: Text('Start Cook!',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
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

class ingredients extends StatelessWidget {
  final String title;
  final String img;
  final String qt;
  const ingredients({
    Key key,this.title,this.img,this.qt
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 70,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(fit: BoxFit.cover,
              image: AssetImage(img)
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          height: 50,
          width: 60,
        ),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        trailing: Text(qt,style: TextStyle(color: Colors.black12,fontWeight: FontWeight.bold,fontSize: 16),),
      ),
    );
  }
}
