import 'package:flutter/material.dart';

class Item {
  String text1;
  String text2;
  bool isActive;

  Item({required this.text1, required this.text2, this.isActive = false});
}

class WalletsTabContent extends StatefulWidget {
  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<WalletsTabContent> {
  List<Item> itemList = [
    Item(
        text1: 'Disconnect Wallet',
        text2:
            'Disconnect Wallets you no longer wish to trade with.'),
    Item(
        text1: 'Connect Wallet',
        text2: 'Connect wallets you wish to trade with.'),
    Item(
        text1: 'Generate Wallet',
        text2: 'Generate a fresh wallet.'),
    Item(
        text1: 'Multi-Wallet',
        text2: 'Purchase and Sell using Multiple Wallets at the same time.'),
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
                        margin: EdgeInsets.only(right: 10),
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
                      else if(index == 1 || index == 2)
                       Container(
                        margin: EdgeInsets.only(right: 20),
                          width: 161,
                          height: 33,
                          decoration: BoxDecoration(
                            color: Color(0xff353535),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("View Wallet Page", style: TextStyle(color: Color(0xffB5B2B2)),),
                          )
                        )
                        else if(index == 0)
                        Container(
                          child: Row(
                            children: [
                              Container(
                          width: 123,
                          height: 24,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.arrow_drop_down),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                              value: 'Main Wallet',
                              items: <String>[
                                'Main Wallet',
                                'Other Wallet',
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
                        ),
                        SizedBox(width: 7,),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                          width: 105,
                          height: 31,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(214, 80, 71, 0.72),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Disconnect", style: TextStyle(color: Color(0xffB5B2B2)),),
                          )
                        )
                            ],
                          ),
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
