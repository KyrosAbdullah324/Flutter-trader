import 'package:flutter/material.dart';

class Item {
  String text1;
  String text2;
  bool isActive;

  Item({required this.text1, required this.text2, this.isActive = false});
}

class AccountTabContent extends StatefulWidget {
  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<AccountTabContent> {
  List<Item> itemList = [
    Item(text1: 'Leaderboard', text2: 'Remove my username from leaderboard'),
    Item(text1: 'ChangeProfilePicture', text2: 'Select channel to copy trade'),
    Item(text1: 'Connected Devices', text2: ''),
    Item(text1: 'Telegram', text2: 'Disconnect Telegram'),
    Item(text1: 'Affiliate', text2: 'Sign up as an Affiliate and earn'),
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
            if (index == 2)
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff535353),
                      width: 1.0,
                    ),
                  ),
                ),
                padding:
                    EdgeInsets.only(left: 32, top: 11, right: 29, bottom: 25),
                child: Column(children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          itemList[index].text1,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
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
                            ))
                      ],
                    ),
                  ),
                  // Second Part
                  Container(
                    child: Row(children: <Widget>[
                      // Status & iphone Parts
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Status parts
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "You are currently logged into this device",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(149, 149, 149, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Image.asset(
                                        'assets/images/Ellipse_105.png',
                                        width: 78,
                                        height: 77,
                                      ),
                                    ]),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 23,
                                      ),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "iphone 9",
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/Rectangle_170.png',
                                              width: 54,
                                              height: 25,
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      // vertical line
                      Container(
                        margin: EdgeInsets.only(left: 32, right: 27),
                        height:
                            223, // Sets the height of the container to fill the available space vertically
                        width:
                            1.0, // Sets the width of the container to 1 pixel
                        color: Color.fromRGBO(207, 207, 207,
                            1), // Sets the color of the line to black
                      ),
                      // Log out of other sessions
                      Container(
                        width: 590,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Log out of other sessions",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "You are currently logged into your account on these devices",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(149, 149, 149, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 20, right: 15
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Image.asset(
                                          'assets/images/Ellipse_105.png',
                                          width: 78,
                                          height: 77,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 23,
                                          ),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "iphone 13",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "Los Angeles, CA",
                                                  style: TextStyle(
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        149, 149, 149, 1),
                                                  ),
                                                ),
                                                Text(
                                                  "Last active: 8 days ago",
                                                  style: TextStyle(
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        149, 149, 149, 1),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                    ]),
                                    // LogOut Button
                                    Column(
                                      children: <Widget>[
                                      Text(
                                        "LogOut",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(214, 80, 71, 1)),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 20, right: 15
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Image.asset(
                                          'assets/images/Ellipse_105.png',
                                          width: 78,
                                          height: 77,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 23,
                                          ),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Macbook Pro",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "Tuscon, AZ",
                                                  style: TextStyle(
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        149, 149, 149, 1),
                                                  ),
                                                ),
                                                Text(
                                                  "Last active: 3 months ago",
                                                  style: TextStyle(
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromRGBO(
                                                        149, 149, 149, 1),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                    ]),
                                    // LogOut Button
                                    Column(children: <Widget>[
                                      Text(
                                        "LogOut",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(214, 80, 71, 1)),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ]),
                  ),
                ]),
              );
            else
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 32),
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
                                    : Color(0xff333436),
                                onPressed: () {
                                  toggleActiveState(index);
                                },
                              ))
                        else if (index == 1)
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                              width: 161,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Upload",
                                  style: TextStyle(color: Color(0xffB5B2B2)),
                                ),
                              ))
                        else if (index == 2)
                          Column(children: <Widget>[
                            Row(
                              children: <Widget>[
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
                                    ))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Column(),
                                Column(children: <Widget>[]),
                              ],
                            ),
                            Row(
                              children: <Widget>[Container()],
                            ),
                          ])
                        else if (index == 3)
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                              width: 161,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Disconnect",
                                  style: TextStyle(color: Color(0xffB5B2B2)),
                                ),
                              ))
                        else
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                              width: 161,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(color: Color(0xffB5B2B2)),
                                ),
                              ))
                      ],
                    ),
                  ));
          },
        ),
      ),
    );
  }
}
