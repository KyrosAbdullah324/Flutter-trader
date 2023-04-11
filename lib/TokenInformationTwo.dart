import 'package:flutter/material.dart';
import 'component/topbar.dart';
import 'widget/custom_textfiled.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swift/config/textstyle.dart';
import 'package:swift/config/images.dart';

class TokenInformationTwo extends StatefulWidget {
  const TokenInformationTwo({Key? key}) : super(key: key);

  @override
  _TokenInformationTwoState createState() => _TokenInformationTwoState();
}

class _TokenInformationTwoState extends State<TokenInformationTwo> {
  int _selectedIndex = 0;
  void _onMenuItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32),
        child: Container(
          padding: EdgeInsets.only(top: 30),
          width: 948,
          color: Color(0xFF1A1A1A),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Topbar
              TopBarItem(),
              // Inputbox
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.3),
                  color: Color(0xFF121212),
                ),
                margin: const EdgeInsets.only(
                  top: 23,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            fontFamily: 'Manrope',
                            fontSize: 14),
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 35, right: 13),
                            child: Icon(Icons.feed_outlined,
                                color: Color.fromRGBO(255, 255, 255, 0.6)),
                          ),
                          labelText: "Enter Contract Address",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.6)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 41,
                      width: 180,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF413D3D),
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 64),
                        child: Text(
                          "Enter",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.87),
                              fontFamily: 'Manrope',
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ), // Token Information
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.3),
                  color: Color(0xFF121212),
                ),
                margin: const EdgeInsets.only(
                  top: 23,
                ),
                padding: const EdgeInsets.only(top: 30, left: 32),
                height: 210,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Token Information",
                              style: TextStyle(
                                  fontSize: 21.44,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.87))),
                        ],
                      ),
                      Row(children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                ),
                                child: Row(children: <Widget>[
                                  Image.asset(
                                    'assets/images/TokenName.png',
                                    width: 18,
                                    height: 25,
                                  ),
                                  Text("Token Name:",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Manrope',
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.87))),
                                  Text(" Shimeka Inu (SHIMEKA)   ",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Manrope',
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.6))),
                                ]))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(
                                  top: 13,
                                ),
                                child: Row(children: <Widget>[
                                  Image.asset(
                                    'assets/images/MarketCap.png',
                                    width: 18,
                                    height: 25,
                                  ),
                                  Text("Market Cap:",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Manrope',
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.87))),
                                  Text(" 156,568    ",
                                      style: TextStyle(
                                          fontSize: 14.3,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Manrope',
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.6))),
                                ]))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(
                                  top: 13,
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/Taxes.png',
                                        width: 18,
                                        height: 25,
                                      ),
                                      Text("Taxes:",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.87))),
                                      Text(" 🅑 0.0% | 🅢 0.0%",
                                          style: TextStyle(
                                              fontSize: 14.3,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.6))),
                                    ]))
                          ],
                        ),
                      ]),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.only(
                                    top: 13,
                                  ),
                                  child: Row(children: <Widget>[
                                    Text("CA:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Manrope',
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.87))),
                                    Text(
                                        " 0xed0172ed8942e37d9184174eedf107db3c5a99ba",
                                        style: TextStyle(
                                            fontSize: 14.3,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Manrope',
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.6))),
                                    Image.asset(
                                      'assets/images/fi-bs-copy-alt.png',
                                      width: 24,
                                      height: 26,
                                    ),
                                  ]))
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Row(children: <Widget>[
                                    Text("LP:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Manrope',
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.87))),
                                    Text(
                                        " 0xed0172ed8942e37d9184174eedf107db3c5a99ba V2 Pool",
                                        style: TextStyle(
                                            fontSize: 14.3,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Manrope',
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.6))),
                                    Image.asset(
                                      'assets/images/fi-bs-copy-alt.png',
                                      width: 24,
                                      height: 26,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 216,
                                      ),
                                      child: Text("Balance:",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.87))),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                          left: 8,
                                        ),
                                        child: Text(
                                            " 258,518 SHIMEKA",
                                            style: TextStyle(
                                                fontSize: 14.3,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Manrope',
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.6)))),
                                  ]))
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
              //Sniper Pannel & More Details
              Container(
                  margin: const EdgeInsets.only(
                    top: 27,
                  ),
                  color: Color.fromARGB(255, 26, 26, 26),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Sniper Part
                        Column(children: <Widget>[
                          Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.3),
                                color: Color(0xFF121212),
                              ),
                              padding: const EdgeInsets.only(
                                  top: 19, left: 28.48, right: 36, bottom: 53),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text("Sniper Pannel",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.87))),
                                    ]),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 7),
                                      child: Row(children: <Widget>[
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              // color: Color(0xFF1A1A1A),
                                              color: Color(0xFF1A1A1A),
                                            ),

                                            height: 41,
                                            width: 262,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 101, bottom: 10),
                                            // margin: const EdgeInsets.only(top: 10, left: 7),

                                            child: Row(children: <Widget>[
                                              Image.asset(
                                                'assets/images/main.png',
                                                width: 18,
                                                height: 25,
                                              ),
                                              Text("Main",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              color: Color(0xFF1A1A1A),
                                            ),
                                            height: 41,
                                            width: 249,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 90, bottom: 10),
                                            margin:
                                                const EdgeInsets.only(left: 7),
                                            child: Row(children: <Widget>[
                                              Image.asset(
                                                'assets/images/gas.png',
                                                width: 18,
                                                height: 25,
                                              ),
                                              Text("Track",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                      ]),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 7),
                                      child: Row(children: <Widget>[
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              color: Color(0xFF1A1A1A),
                                            ),
                                            height: 41,
                                            width: 257,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 101, bottom: 10),
                                            margin: const EdgeInsets.only(
                                                right: 16),
                                            child: Row(children: <Widget>[
                                              Text("Buy X ETH",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              color: Color(0xFF1A1A1A),
                                            ),
                                            height: 41,
                                            width: 245,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 90, bottom: 10),
                                            child: Row(children: <Widget>[
                                              Text("Buy 0 SHIMEKA",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                      ]),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 7),
                                      child: Row(children: <Widget>[
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              color: Color(0xFF1A1A1A),
                                            ),
                                            height: 41,
                                            width: 518,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 207, bottom: 10),
                                            child: Row(children: <Widget>[
                                              Text("Buy 0.01 ETH",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                      ]),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 7),
                                      child: Row(children: <Widget>[
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              color: Color(0xFF1A1A1A),
                                            ),
                                            height: 41,
                                            width: 257,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 101, bottom: 10),
                                            margin: const EdgeInsets.only(
                                                right: 16),
                                            child: Row(children: <Widget>[
                                              Text("Buy X ETH",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                        Column(children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.3),
                                              color: Color(0xFF1A1A1A),
                                            ),
                                            height: 41,
                                            width: 245,
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 90, bottom: 10),
                                            child: Row(children: <Widget>[
                                              Text("Buy 0 SHIMEKA",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Manrope',
                                                      color: Color.fromRGBO(
                                                          215, 215, 215, 1))),
                                            ]),
                                          )
                                        ]),
                                      ]),
                                    ),
                                  ]),
                            )
                          ]),
                          // Active Sniper's
                          Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.3),
                                color: Color(0xFF121212),
                              ),
                              width: 590,
                              height: 165,
                              padding: const EdgeInsets.only(
                                  top: 19, left: 28.48, right: 36),
                              margin: const EdgeInsets.only(top: 27),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Active Snipes
                                    Row(children: <Widget>[
                                      Text("Active Snipes'",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.87))),
                                    ]),
                                    // Shimeka part
                                    Container(
                                        margin: const EdgeInsets.only(top: 21),
                                        child: Row(children: [
                                          Container(
                                              width: 58,
                                              height: 58,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14.3),
                                                color: Color(0xff1D1717),
                                              ),
                                              child: Icon(Icons.call_received,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.87),
                                                  size: 15)),
                                          SizedBox(width: 14.3),
                                          Container(
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                Container(
                                                    width: 250,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Shimeka",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      17.87,
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          0.87))),
                                                          Text("-6.00 ETH",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      17.87,
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          0.87)))
                                                        ])),
                                                SizedBox(height: 8),
                                                Container(
                                                    width: 250,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "12 Aug 2022 | 10:00",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      14.3,
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          0.6)))
                                                        ]))
                                              ]))
                                        ])), // Underline Part
                                    Container(
                                      margin: const EdgeInsets.only(top: 17.92),
                                      child: Divider(
                                        color:
                                            Color.fromRGBO(160, 160, 160, 0.2),
                                        thickness: 1.0,
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                        ]),
                        // More Detail
                        Column(children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.3),
                                color: Color(0xFF121212),
                              ),
                              width: 327,
                              // height: 407,
                              padding: const EdgeInsets.only(
                                  top: 17, left: 21, bottom: 24, right: 20),
                              margin: const EdgeInsets.only(left: 23),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text("More Details",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.87))),
                                    ]),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/owner.png',
                                                    // width: 24,
                                                    // height: 26,
                                                  ),
                                                  Text("Owner: ",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text("***RENOUNCED***",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/LP_Ratio.png',
                                                    // width: 24,
                                                    // height: 26,
                                                  ),
                                                  Text("LP Ratio: ",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 12% in",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                  Text("Uniswap",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              21,
                                                              175,
                                                              251,
                                                              1))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/Holders.png',
                                                    // width: 24,
                                                    // height: 26,
                                                  ),
                                                  Text("Holders: ",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text("393",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              21,
                                                              175,
                                                              251,
                                                              1))),
                                                  Text(" 2.9%|2.9%|2.8%",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Image.asset(
                                                        'assets/images/LPLock.png',
                                                        // width: 24,
                                                        // height: 26,
                                                      ),
                                                      Text("LP Lock:",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  'Manrope',
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      0.87))),
                                                      Container(
                                                        width: 180,
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 3,
                                                                left: 5),
                                                        child: Text(
                                                          "97.03% locked for 34 days von Unicrypt",
                                                          style: TextStyle(
                                                            fontSize: 14.3,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                'Manrope',
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    0.6),
                                                          ),
                                                          overflow: TextOverflow
                                                              .visible,
                                                        ),
                                                      ),
                                                    ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 13,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/Age.png',
                                                    // width: 24,
                                                    // height: 26,
                                                  ),
                                                  Text("Age:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 39d - 6h 33m 48s",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/Telegram.png',
                                                    // width: 24,
                                                    // height: 26,
                                                  ),
                                                  Text("Telegram:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(
                                                      " https://t.me/shimekainu",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              21,
                                                              175,
                                                              251,
                                                              1))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/Website.png',
                                                    // width: 24,
                                                    // height: 26,
                                                  ),
                                                  Text("Website:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" https://shimeka.xyz",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              21,
                                                              175,
                                                              251,
                                                              1))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Text("Max Buy:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 1%",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                  Text("Max Sell:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 1%",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Text("Maz Wallet:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 1%",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                padding: const EdgeInsets.only(
                                                  top: 7,
                                                ),
                                                child: Row(children: <Widget>[
                                                  Text("Liqudiiy:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 7.69%",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                  Text("Burnt:",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.87))),
                                                  Text(" 0%",
                                                      style: TextStyle(
                                                          fontSize: 14.3,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily: 'Manrope',
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.6))),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]))
                        ])
                      ]))
            ],
          ),
        ));
  }
}
