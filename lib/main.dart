import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const MaterialColor color = const MaterialColor(
    0xFF007252,
    const <int, Color>{
      50: const Color(0xFF007252),
      100: const Color(0xFF007252),
      200: const Color(0xFF007252),
      300: const Color(0xFF007252),
      400: const Color(0xFF007252),
      500: const Color(0xFF007252),
      600: const Color(0xFF007252),
      700: const Color(0xFF007252),
      800: const Color(0xFF007252),
      900: const Color(0xFF007252),
    },
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: color,
        primaryColor: color,
        accentColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Color(0xff1B1F23),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff1B1F23),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff212528),
                          blurRadius: 10.0,
                          spreadRadius: 0,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            child: Icon(
                              FontAwesomeIcons.volumeMute,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.stepBackward,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              FontAwesomeIcons.play,
                              color: Colors.white,
                              size: 20,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                              // primary: Colors.blue, // <-- Button color
                              // onPrimary: Colors.red, // <-- Splash color
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.stepForward,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            child: Icon(
                              FontAwesomeIcons.reply,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  color: color,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: 175,
                    height: 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {},
                          child: Icon(
                            FontAwesomeIcons.volumeOff,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 36,
                          color: Colors.white,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {},
                          child: Icon(
                            FontAwesomeIcons.volumeUp,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Image.asset(
                  'assets/images/dreamroot.png',
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
