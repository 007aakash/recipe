import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'screen.dart';
const kftext =
    TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold);
const kftext2 = TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w300);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Text(
                      'Cooking Experience \nLike a Chef',
                      style: kftext, textAlign: TextAlign.center,
                    ),
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.7),
                Container(
                  child: Text(
                    'Let\'s make a delicious dish with the best recipe for the family',
                    style: kftext2,
                    textAlign: TextAlign.center,
                  ),
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                ConfirmationSlider(
                  onConfirmation: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen(),),);
                  },
                  text: 'Get Started',
                  width: 260,height: 70,
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/front.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Center(
//   child: SliderButton(
//     backgroundColor: Colors.lightGreenAccent,
//     action: () {},
//     label: Text(
//       "Get Started",
//       style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.w500,
//           fontSize: 17),
//     ),
//     icon: Text(
//       "->",
//       style: TextStyle(
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//         fontSize: 44,
//       ),
//     ),
//   ),
// ),