import 'package:flutter/material.dart';
import 'package:gridviewtesting/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String appTitle = 'ScreenDesignChaellenge';
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScreenDesignChaellenge',
      theme: ThemeData(
        primaryColor: Colors.white,
        dividerColor: Colors.black.withOpacity(0.8),
        primaryTextTheme:
        Theme.of(context).primaryTextTheme.apply(bodyColor: Colors.white),
        accentColor: Colors.blue, // needs to be MaterialColor
        unselectedWidgetColor: Colors.grey, // needs to be MaterialColor
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home:  MyHomePage(appTitle:appTitle),
    );
  }
}
