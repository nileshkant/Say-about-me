import 'package:flutter/material.dart';
import 'package:sayaboutme/components/Homepage/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(fontSize: 18.0, color: Colors.black45, fontWeight: FontWeight.bold),
          display1: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
          display2: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
          display3: TextStyle(fontSize: 14.0, color: Colors.white),
          display4: TextStyle(fontSize: 20.0, color: Colors.white),
          headline: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),

        ),

        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primaryColor: Colors.white,
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}
