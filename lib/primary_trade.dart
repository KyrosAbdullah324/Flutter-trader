import 'package:flutter/material.dart';
import 'leftbar.dart';
void main() {
  runApp(MyWebApp());
}

class MyWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fixed Width Web App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Fixed Width Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1715, minHeight: 965),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: Container(
              color: Color(0xFF121212),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  LeftMenuBar(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xFF1A1A1A),
                      width: 1002,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // main frame widgets here
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 426,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // right bar widgets here
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
