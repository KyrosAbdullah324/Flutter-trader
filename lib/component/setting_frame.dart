import 'package:flutter/material.dart';

class Frame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 38,
          margin: EdgeInsets.only(right: 23, left: 23, top: 54),
          decoration: BoxDecoration(
            color: Color(0xffE68437),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 13, right: 11),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/Downup.png'),
                      SizedBox(height: 0),
                      Image.asset('assets/images/Downdown.png'),
                    ],
                  ),
                ),
              ),
              Text(
                'Update to Swift Trade version 2.54.0 is available',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  height: 1.3,
                  fontFamily: 'Manrope',
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Download update',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          height: 1.3,
                          fontFamily: 'Manrope',
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 23, top: 30, bottom: 19),
        child: Text(
          'Settings',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontFamily: 'Manrope',
          ),
        ),
        ),
        ],)
      ],
    );
  }
}
