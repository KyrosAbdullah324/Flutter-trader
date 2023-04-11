import 'package:flutter/material.dart';

class MenuBarItem extends StatelessWidget {
  final String icon;
  final String text;
  final int index;
  final bool isSelected;
  final Function(int) onTap;
  MenuBarItem({
    required this.icon,
    required this.text,
    required this.index,
    this.isSelected = false,
    required this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => onTap(index),
      child: Row(
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Color(0xff1A1A1A),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Image.asset(
              icon,
              width: 17.0,
              height: 17.0,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(width: 14.0),
          Container(
            width: 176,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text.split('\n')[0],
                  style: TextStyle(
                    fontSize: 17,
                    color: index == 7 ? Color(0xFFE95065) :Colors.white,
                     fontFamily: 'Manrope',
                  ),
                ),
                if (text.split('\n').length > 1)
                  Text(
                    text.split('\n')[1],
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFA7A7A7),
                      fontFamily: 'Manrope',
                    ),
                  ),
              ],
            ),
          ),
          if (isSelected)
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/menubar_right.png',
                  width: 7.15,
                  height: 44.68,
                ),
              ],
            )

        ]
      )
    );
  }
}
