import 'package:flutter/material.dart';
import 'package:swift/component/tab_board.dart';
import 'package:swift/component/setting_frame.dart';

class MainPan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Frame(),
        Container(
          margin: EdgeInsets.only(right: 23, bottom: 38, left: 23),
          height: 720,
          decoration: BoxDecoration(
            // border: Border.all(
            //   color: Colors.grey,
            //   width: 1,
            // ),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff262626),
          ),
          child: CustomTabView(
            tabs: ['General', 'Wallets', 'Buy', 'Sell', 'Approve', 'Copy-Trade', 'Account'],
            onTabChanged: (int index) {
              // Do something when a tab is changed
            },
          ),
        )
      ],
    );
  }
}
