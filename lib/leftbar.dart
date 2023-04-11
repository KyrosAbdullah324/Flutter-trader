import 'package:flutter/material.dart';
import 'component/leftmenubar.dart';

final List<Map<String, dynamic>> menuItems = [
  {
    'icon': 'assets/images/Overview.png',
    'text': 'Overview',
  },
  {
    'icon': 'assets/images/Wallet.png',
    'text': 'Wallet',
  },
  {
    'icon': 'assets/images/Trade.png',
    'text': 'Trade',
  },
  {
    'icon': 'assets/images/Sniper.png',
    'text': 'Sniper',
  },
  {
    'icon': 'assets/images/Monitor.png',
    'text': 'Monitor',
  },
  {
    'icon': 'assets/images/Trending.png',
    'text': 'Trending\nComing Soon',
  },
  {
    'icon': 'assets/images/Settings.png',
    'text': 'Settings',
  },
    {
    'icon': 'assets/images/Logout.png',
    'text': 'Logout',
  }
];
class LeftMenuBar extends StatelessWidget {

  final int selectedIndex;
  final Function(int) onMenuItemSelected;
  LeftMenuBar({
    required this.selectedIndex,
    required this.onMenuItemSelected,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36.0),
        child: Container(
        width: 243,
        color: Color(0xFF121212),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // logo
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                bottom: 40.0,
                left: 0
              ),
              child: Image.asset(
                'assets/images/logo.png',
                width: 142.0,
                height: 46.0,
              ),
            ),
            // rows with icons and text
            Column(
              children: menuItems
                  .asMap()
                  .map((index, item) {
                    return MapEntry(
                      index,
                     Container(
                      margin: EdgeInsets.only(bottom: index != 6 ? 26.0 : 214),
                      child: MenuBarItem(
                        icon: item['icon'],
                        text: item['text'],
                        isSelected: index == selectedIndex,
                        index: index,
                        onTap: (index) => onMenuItemSelected(index),
                      )
                    )
                    );
                  })
                  .values
                  .toList(),
            ),
            ElevatedButton.icon(
              onPressed: () {
                // do something when the button is pressed
              },
              icon: Image.asset(
                'assets/images/Info.png',
                width: 15.0,
                height: 15.0,
              ),
              label: Text(
                'Guide',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF0D0B1C),
                  fontWeight: FontWeight.w500,
                   fontFamily: 'Manrope',
                )
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Color(0xFF0D0B1C),
                minimumSize: Size(205, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
