import 'package:flutter/material.dart';

class InfoBarItem extends StatelessWidget {
  final String icon;
  final String text1;
  final String text2;
  final int index;
  InfoBarItem({
    required this.icon,
    required this.text1,
    required this.text2,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(14.0),
      ),
      width: 354,
      height: 70,
      child: Row(
        children: <Widget>[
          SizedBox(width: 17.0),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xff121212),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Image.asset(
              icon,
              width: 15.0,
              height: 15.0,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(width: 14.0),
          Container(
            width: 264,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xDDFFFFFF),
                     fontFamily: 'Manrope',
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0x99FFFFFF),
                     fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Image.asset(
                'assets/images/More.png',
                width: 5.36,
                height: 14.3,
              ),
            ],
          ),
        
        ]
      ),
    );
  }
}
