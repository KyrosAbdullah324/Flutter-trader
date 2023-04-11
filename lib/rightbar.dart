import 'package:flutter/material.dart';
import 'component/rightinfobar.dart';
final List<Map<String, dynamic>> menuItems = [
  {
    'icon': 'assets/images/Affiliate.png',
    'text1': 'Affiliate Code',
    'text2': 'Add an Affiliate Code',
  },
    {
    'icon': 'assets/images/Settings.png',
    'text1': 'Quick Settings',
    'text2': 'Manage Autopay',
  },
    {
    'icon': 'assets/images/Calendar.png',
    'text1': 'Reminders',
    'text2': 'Never miss a launch',
  },
];

class RightInfoBar extends StatelessWidget {
   final int selectedIndex;
  RightInfoBar({
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
        child: Container(
        width: 396,
        color: Color(0xFF121212),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // logo
            Padding(
              padding: const EdgeInsets.only(
                top: 35.0,
                bottom: 17.0,
                left: 0
              ),
              child: Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 27, 
                  height: 1.4,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                   fontFamily: 'Manrope',
                )
              )
            ),
            // rows with icons and text
            Row(
              children: <Widget>[
                Container(
                  width: 62.55,
                  height: 62.55,
                  child: Image.asset(
                    'assets/images/User.png',
                    width: 17.0,
                    height: 17.0,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(width: 18.0),
                Container(
                  width: 181,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Kyle Grange',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                           fontFamily: 'Manrope',
                        ),
                      ),
                    
                      Text(
                        'Last Trade: 24 mins ago',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                           fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
            Container(
               margin: EdgeInsets.only(top: 26, bottom: (selectedIndex >= 2 && selectedIndex <= 4  ) ? 22 : 268),
               child: Text(
                (selectedIndex >= 2 && selectedIndex <= 4  ) ? "Gas Price" : 'Connected Accounts',
                style: TextStyle(
                  fontSize: 21,
                  color: Color(0xDDFFFFFF),
                  fontWeight: FontWeight.w700,
                   fontFamily: 'Manrope',
                ),
              ),
            ),
            if(selectedIndex >= 2 && selectedIndex <= 4  )
               Container(
                margin: EdgeInsets.only(bottom: 43),
                decoration: BoxDecoration(
                  color: Color(0xFF201B1B),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                width: 354,
                height: 161,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 29.0),
                    Container(
                      width: 144,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "FAST: 20 GWEI",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Manrope',
                              height: 2
                            ),
                          ),
                          Text(
                            "Medium: 20 GWEI",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Manrope',
                              height: 2
                            ),
                          ),
                           Text(
                            "Slow: 20 GWEI",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Manrope',
                              height: 2
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(width: 13.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        
                        Image.asset(
                          'assets/images/Chart1.png',
                          width: 140,
                          height: 91,
                        ),
                      ],
                    ),
                  
                  ]
                ),
               ),
            Container(
               margin: EdgeInsets.only(bottom: 17),
               child: Text(
                'Special Features',
                style: TextStyle(
                  fontSize: 21,
                  color: Color(0xDDFFFFFF),
                  fontWeight: FontWeight.w700,
                   fontFamily: 'Manrope',
                ),
              ),
            ),
             Column(
              children: menuItems
                  .asMap()
                  .map((index, item) {
                    return MapEntry(
                      index,
                     Container(
                      margin: EdgeInsets.only(bottom: index != 2 ? 26.0 : 46),
                      child: InfoBarItem(
                        icon: item['icon'],
                        text1: item['text1'],
                        text2: item['text2'],
                        index: index,
                      )
                    )
                    );
                  })
                  .values
                  .toList(),
            ),
           Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1E1710),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                width: 374,
                height: 92,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Plan',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0x99FFFFFF),
                           fontFamily: 'Manrope',
                        ),
                      ),
                      Text(
                        'Swift Lite (Free Mode)',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0x99FFFFFF),
                          fontWeight: FontWeight.w700,
                           fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: ElevatedButton(
                  onPressed: () {
                    // do something when the button is pressed
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Guide',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0D0B1C),
                            fontWeight: FontWeight.w500,
                             fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/RightArrow.png',
                          width: 15.0,
                          height: 15.0,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xFF2D2D2D),
                    fixedSize: Size(97, 34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(0.0),
                        bottomRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(0.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )

          ],
        ),
      )
    );
  }
}
