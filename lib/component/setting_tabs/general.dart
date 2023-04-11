import 'package:flutter/material.dart';

class Item {
  String text1;
  String text2;
  bool isActive;

  Item({required this.text1, required this.text2, this.isActive = false});
}

class GeneralTabContent extends StatefulWidget {
  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<GeneralTabContent> {
  List<Item> itemList = [
    Item(
        text1: 'Anti-Rug',
        text2:
            'Active Trade will automatically withdraw once the deployer attempts to withdraw the token’s liquidity.'),
    Item(
        text1: 'Anti-MEV',
        text2: 'Anti-MEV will ensure that you never get front-run.'),
    Item(
        text1: 'Smart Slippage',
        text2:
            'Smart Slippage will auto adjust the slippage to make sure that your trade never fails.'),
    Item(text1: 'Slippage', text2: 'Set a custom Slippage percentage.'),
    Item(text1: 'Max Gas Price', text2: 'Enter custom Gas Price limit.'),
    Item(
        text1: 'Override (Not Recommended)',
        text2: 'By-pass all settings and purchase without limitations.'),
    Item(
        text1: 'Display Language',
        text2: 'Set the language displayed in Swift Trade.'),
    Item(text1: 'Theme', text2: 'Select the theme.'),
  ];

  void toggleActiveState(int index) {
    setState(() {
      itemList[index].isActive = !itemList[index].isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff535353),
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemList[index].text1,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            FractionallySizedBox(
                                widthFactor: 0.5,
                                child: Container(
                                  child: Text(
                                    itemList[index].text2,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffB5B2B2)),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      if (index == 3)
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 161,
                          height: 33,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Here...',
                              hintStyle: TextStyle(color: Color(0xffB5B2B2)),
                              filled: true,
                              fillColor: Color(0xff353535),
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(color: Color(0xffB5B2B2), fontSize: 14, fontFamily: 'Manrope', fontWeight: FontWeight.w600),
                          ),
                        )
                      else if (index == 4)
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 161,
                          height: 33,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Here...',
                              hintStyle: TextStyle(color: Color(0xffB5B2B2)),
                              filled: true,
                              fillColor: Color(0xff353535),
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(color: Color(0xffB5B2B2), fontSize: 14, fontFamily: 'Manrope', fontWeight: FontWeight.w600),
                          ),
                        )
                      else if (index == 6)
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 161,
                          height: 33,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffB5B2B2),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.arrow_drop_down),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                              value: 'English',
                              items: <String>[
                                'English',
                                'French',
                                'German',
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(value, style: TextStyle(color: Color(0xffB5B2B2)),),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Do something when an option is selected
                              },
                            ),
                          ),
                        )
                      else if (index == 7)
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 161,
                          height: 33,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffB5B2B2),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.arrow_drop_down),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                              value: 'Dark',
                              items: <String>[
                                'Dark',
                                'Light',
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(value, style: TextStyle(color: Color(0xffB5B2B2)),),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Do something when an option is selected
                              },
                            ),
                          ),
                        )
                      else
                       Container(
                        // margin: EdgeInsets.only(right: 10),
                        child: IconButton(
                            icon: Icon(
                              itemList[index].isActive
                                  ? Icons.toggle_on
                                  : Icons.toggle_off,
                            ),
                            iconSize: 60.0,
                            color: itemList[index].isActive
                                ? Color(0xff8882D5)
                                : Color(0xff333436),
                            onPressed: () {
                              toggleActiveState(index);
                            },
                          )
                       )
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
