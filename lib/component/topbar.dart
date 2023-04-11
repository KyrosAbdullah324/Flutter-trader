import 'package:flutter/material.dart';

class TopBarItem extends StatefulWidget {
  @override
  _TopBarItemState createState() => _TopBarItemState();
}

class _TopBarItemState extends State<TopBarItem> {
  String selectedValue1 = 'Etherirum';
  String selectedValue2 = 'Main';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.3),
                    color: Color(0xFF121212),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  height: 53.61,
                  width: 235,
                  child: Row(
                    children: <Widget>[
                      DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.87)),
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        dropdownColor: Color(0xFF121212),
                        value: selectedValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue1 = newValue!;
                          });
                        },
                        items: <String>[
                          'Etherirum',
                          'Bitcoin',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/etherium.png',
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(width: 10),
                                Text(value),
                                SizedBox(width: 70),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 26),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.3),
                    color: Color(0xFF121212),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  height: 53.61,
                  width: 235,
                  child: Row(
                    children: <Widget>[
                      DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.87)),
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        dropdownColor: Color(0xFF121212),
                        value: selectedValue2,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue2 = newValue!;
                          });
                        },
                        items: <String>[
                          'Main',
                          'Other',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/main.png',
                                  width: 18,
                                  height: 18,
                                ),
                                SizedBox(width: 10),
                                Text(value),
                                SizedBox(width: 80),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ]
            )
          ),
          Container(
            width: 125,
            child: Row(
              children: <Widget>[
                Container(
                  width: 53.61,
                  height: 53.61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.3),
                    color: Color(0xFF121212),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/notice.png',
                      width: 21,
                      height: 21,
                    ),
                  ),
                ),
                SizedBox(width: 17),
                Container(
                  width: 53.61,
                  height: 53.61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.3),
                    color: Color(0xFF121212),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/help.png',
                      width: 21,
                      height: 21,
                    ),
                  ),
                ),
              ]
            )
          )
        ],
      )
    );
  }
}
