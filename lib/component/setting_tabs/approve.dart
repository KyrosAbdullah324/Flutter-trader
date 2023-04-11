import 'package:flutter/material.dart';

class Item {
  String text1;
  String text2;
  bool isActive;

  Item({required this.text1, required this.text2, this.isActive = false});
}

class ApproveTabContent extends StatefulWidget {
  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<ApproveTabContent> {
  List<Item> itemList = [
    Item(
        text1: 'Auto Approve',
        text2:
            'Automatically approve transactions.'),
    Item(
        text1: 'Approve Gas Price',
        text2: 'Gas price desired when approving a transaction.'),
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
                      if (index == 0)
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
                                : const Color(0xff333436),
                            onPressed: () {
                              toggleActiveState(index);
                            },
                          )
                      )                                          
                      else
                       Container(
                        margin: EdgeInsets.only(right: 20.0),
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
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
