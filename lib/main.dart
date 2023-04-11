import 'TokenInformationOne.dart';
import 'package:swift/config/images.dart';
import 'package:swift/config/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:swift/component/setting.dart';
import 'package:swift/component/setting_frame.dart';
import 'leftbar.dart';
import 'package:flutter_svg/svg.dart';
import 'rightbar.dart';
import 'overview.dart';
import 'TokenInformationTwo.dart';
import 'wallet.dart';
import 'monitor.dart';

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
      home: MainHomePage(),
    );
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>  {
  int _selectedIndex = 0;
 void _onMenuItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  LeftMenuBar(onMenuItemSelected :_onMenuItemSelected, selectedIndex: _selectedIndex),
                  Expanded(
                    // flex: 1,
                    child: Container(
                      color: Color(0xFF1A1A1A),
                      width: 1002,
                      child: Column(
                        children: <Widget>[
                            if (_selectedIndex == 0)
                              OverView()
                            else if (_selectedIndex == 1)
                              Wallet()
                            else if (_selectedIndex == 2)
                              TokenInformationOne()
                            else if (_selectedIndex == 3)
                              TokenInformationTwo()
                            else if (_selectedIndex == 4)
                              Monitor()
                            else if (_selectedIndex == 6)
                              MainPan()
                        ],
                      ),
                    ),
                  ),
               
                  Container(
                    width: 426,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RightInfoBar(selectedIndex: _selectedIndex)
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
