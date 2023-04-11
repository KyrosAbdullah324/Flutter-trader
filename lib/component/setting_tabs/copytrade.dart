import 'package:flutter/material.dart';

class CopyTradeTabContent extends StatefulWidget {
  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<CopyTradeTabContent> {
  List<Map<String, dynamic>> itemList = [
    {
      'title': 'Call Channels',
      'des': 'Copy trade call channels.',
      'isActive': false,
      'isCollapse': false,
      'subItem': [
        {
          'title': 'Select Channel',
          'des': 'Select channel to copy trade',
          'isCollapse': false,
          'secondItem': [
            {
              'title': 'add custom channel',
              'isActive': false,
            },
            {
              'title': 'Venom Calls',
              'isActive': false,
            },
            {
              'title': 'Bossy Calls',
              'isActive': false,
            },
            {
              'title': 'Alpha Calls',
              'isActive': false,
            },
          ]
        },
        {
          'title': 'Auto Buy',
          'des': 'Automatically buy when caller posts a contract address.',
          'isActive': false,
        },
        {
          'title': 'Auto Sell',
          'des':
              'Automatically Sell when you reach the High or Low set in your sell settings page.',
          'isActive': false,
        },
        {
          'title': 'Multi-Wallet',
          'des': 'Purchase using Multiple Wallets.',
          'isActive': false,
        }
      ]
    },
    {
      'title': 'Wallets',
      'des': 'Copy trade call channels.',
      'isActive': false,
      'isCollapse': false,
      'subItem': [
        {
          'title': 'Add Wallet',
          'des': 'Select wallet to copy trade.',
          'isCollapse': false,
          'secondItem': [
            {
              'title': 'add wallet',
              'isActive': false,
            },
            {
              'title': 'Venom Wallet',
              'isActive': false,
            },
            {
              'title': 'Bossy Wallet',
              'isActive': false,
            },
            {
              'title': 'Alpha Wallet',
              'isActive': false,
            }
          ]
        },
        {
          'title': 'Front Run',
          'des':
              'Automatically Sell when you reach the High or Low set in your sell settings page.',
          'isActive': false,
        }
      ]
    }
  ];

  void toggleActiveState1(int index) {
    setState(() {
      itemList[index]['isActive'] = !itemList[index]['isActive'];
    });
  }

  void toggleCollapseState1(int index) {
    setState(() {
      itemList[index]['isCollapse'] = !itemList[index]['isCollapse'];
    });
  }

  void toggleActiveState2(int index1, int index2) {
    setState(() {
      itemList[index1]['subItem'][index2]['isActive'] =
          !itemList[index1]['subItem'][index2]['isActive'];
    });
  }

  void toggleCollapseState2(int index1, int index2) {
    setState(() {
      itemList[index1]['subItem'][index2]['isCollapse'] =
          !itemList[index1]['subItem'][index2]['isCollapse'];
    });
  }

  void toggleActiveState3(int index1, int index2, int index3) {
    setState(() {
      itemList[index1]['subItem'][index2]['secondItem'][index3]['isActive'] =
          !itemList[index1]['subItem'][index2]['secondItem'][index3]
              ['isActive'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index1) {
          final item1 = itemList[index1];
          final subitems = List<Map<String, dynamic>>.from(item1['subItem']);
          return Column(
            children: <Widget>[
              Container(
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
                          vertical: 19, horizontal: 32),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: InkResponse(
                              onTap: () {
                                toggleCollapseState1(index1);
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          item1['title'],
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                        if (item1['isCollapse'])
                                          Image.asset(
                                            'assets/images/upCollapse.png',
                                            width: 14.3,
                                            height: 7.43,
                                          )
                                        else
                                          Image.asset(
                                            'assets/images/downCollapse.png',
                                            width: 14.3,
                                            height: 7.43,
                                          )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  FractionallySizedBox(
                                      widthFactor: 0.5,
                                      child: Container(
                                        child: Text(
                                          item1['des'],
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffB5B2B2)),
                                        ),
                                      ))
                                ],
                              ),
                            )),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                child: IconButton(
                                  icon: Icon(
                                    item1['isActive']
                                        ? Icons.toggle_on
                                        : Icons.toggle_off,
                                  ),
                                  iconSize: 60.0,
                                  color: item1['isActive']
                                      ? Color(0xff8882D5)
                                      : Color(0xff333436),
                                  onPressed: () {
                                    toggleActiveState1(index1);
                                  },
                                ))
                          ]))),
              Visibility(
                visible: item1['isCollapse'],
                child: Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: subitems.length,
                        itemBuilder: (context, index2) {
                          final item2 = subitems[index2];
                          final secondItems = List<Map<String, dynamic>>.from(
                              item2['secondItem'] != null
                                  ? item2['secondItem']
                                  : []);
                          return Column(children: <Widget>[
                            Container(
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
                                        vertical: 19, horizontal: 32),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                              child: InkResponse(
                                            onTap: () {
                                              toggleCollapseState2(
                                                  index1, index2);
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        item2['title'],
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      if (item2['isCollapse'] !=
                                                          null)
                                                        if (item2['isCollapse'])
                                                          Image.asset(
                                                            'assets/images/upCollapse.png',
                                                            width: 14.3,
                                                            height: 7.43,
                                                          )
                                                        else
                                                          Image.asset(
                                                            'assets/images/downCollapse.png',
                                                            width: 14.3,
                                                            height: 7.43,
                                                          )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 8),
                                                FractionallySizedBox(
                                                    widthFactor: 0.5,
                                                    child: Container(
                                                      child: Text(
                                                        item2['des'],
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Color(
                                                                0xffB5B2B2)),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          )),
                                          if (item2['isActive'] != null)
                                            Container(
                                                margin:
                                                    EdgeInsets.only(right: 10),
                                                child: IconButton(
                                                  icon: Icon(
                                                    item2['isActive']
                                                        ? Icons.toggle_on
                                                        : Icons.toggle_off,
                                                  ),
                                                  iconSize: 60.0,
                                                  color: item2['isActive']
                                                      ? Color(0xff8882D5)
                                                      : Color(0xff333436),
                                                  onPressed: () {
                                                    toggleActiveState2(
                                                        index1, index2);
                                                  },
                                                ))
                                        ]))),
                            if (item2['isCollapse'] != null)
                              Visibility(
                                  visible: item2['isCollapse'],
                                  child: Container(
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          physics: ClampingScrollPhysics(),
                                          itemCount: secondItems.length,
                                          itemBuilder: (context, index3) {
                                            final item3 = secondItems[index3];
                                            return Column(children: <Widget>[
                                              if (item3['title'] ==
                                                  'add custom channel')
                                                Container(
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                          color:
                                                              Color(0xff535353),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 32),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Container(
                                                                height: 33,
                                                                width: 293,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF353535),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                ),
                                                                child:
                                                                    TextField(
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    color: Color(
                                                                        0xFFB5B2B2),
                                                                  ),
                                                                  decoration:
                                                                      InputDecoration(
                                                                    contentPadding: EdgeInsets.only(
                                                                        top: 8,
                                                                        left:
                                                                            10,
                                                                        bottom:
                                                                            8),
                                                                    hintText:
                                                                        'Add custom channel...',
                                                                    hintStyle:
                                                                        TextStyle(
                                                                            color:
                                                                                Color(0xFFB5B2B2)),
                                                                    border:
                                                                        InputBorder
                                                                            .none,
                                                                    suffixIcon:
                                                                        Container(
                                                                      width: 61,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFF5A55D2),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          topRight:
                                                                              Radius.circular(5),
                                                                          bottomRight:
                                                                              Radius.circular(5),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          // handle button press
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Add',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Color(0xFFB5B2B2),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              )
                                                            ])))
                                              else if (item3['title'] ==
                                                  'add wallet')
                                                Container(
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                          color:
                                                              Color(0xff535353),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 32),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Container(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        10,
                                                                    horizontal:
                                                                        11),
                                                                height: 54,
                                                                width: 428,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                ),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            33,
                                                                        width:
                                                                            195,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF353535),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            TextField(
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Color(0xFFB5B2B2),
                                                                          ),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            contentPadding: EdgeInsets.only(
                                                                                top: 15,
                                                                                left: 10,
                                                                                bottom: 15),
                                                                            hintText:
                                                                                'Add Wallet...',
                                                                            hintStyle:
                                                                                TextStyle(color: Color(0xFFB5B2B2)),
                                                                            border:
                                                                                InputBorder.none,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            33,
                                                                        width:
                                                                            183,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF353535),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            TextField(
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Color(0xFFB5B2B2),
                                                                          ),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            contentPadding: EdgeInsets.only(
                                                                                top: 8,
                                                                                left: 10,
                                                                                bottom: 8),
                                                                            hintText:
                                                                                'Wallet Name',
                                                                            hintStyle:
                                                                                TextStyle(color: Color(0xFFB5B2B2)),
                                                                            border:
                                                                                InputBorder.none,
                                                                            suffixIcon:
                                                                                Container(
                                                                              width: 61,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFF5A55D2),
                                                                                borderRadius: BorderRadius.only(
                                                                                  topRight: Radius.circular(5),
                                                                                  bottomRight: Radius.circular(5),
                                                                                ),
                                                                              ),
                                                                              child: TextButton(
                                                                                onPressed: () {
                                                                                  // handle button press
                                                                                },
                                                                                child: Text(
                                                                                  'Add',
                                                                                  style: TextStyle(
                                                                                    fontSize: 14,
                                                                                    color: Color(0xFFB5B2B2),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ]),
                                                              )
                                                            ])))
                                              else
                                                Container(
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                          color:
                                                              Color(0xff535353),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 8,
                                                                horizontal: 32),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Expanded(
                                                                  child:
                                                                      InkResponse(
                                                                child: Text(
                                                                  item3[
                                                                      'title'],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              )),
                                                              Container(
                                                                margin: EdgeInsets.only(right: 18.0),
                                                                  child:
                                                                      IconButton(
                                                                icon: Icon(
                                                                  item3['isActive']
                                                                      ? Icons
                                                                          .toggle_on
                                                                      : Icons
                                                                          .toggle_off,
                                                                ),
                                                                iconSize: 48.0,
                                                                color: item3[
                                                                        'isActive']
                                                                    ? Color(
                                                                        0xff8882D5)
                                                                    : Color(
                                                                        0xff333436),
                                                                onPressed: () {
                                                                  toggleActiveState3(
                                                                      index1,
                                                                      index2,
                                                                      index3);
                                                                },
                                                              )
                                                              )
                                                            ])))
                                            ]);
                                          }))),
                          ]);
                        })),
              ),
            ],
          );
        },
      ),
    ));
  }
}
