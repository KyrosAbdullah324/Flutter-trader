import 'package:flutter/material.dart';
import './component/topbar.dart';

class Monitor extends StatelessWidget {
  const Monitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36.0, right: 35.0, top: 35, bottom: 27),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarItem(),
            Container(
              padding: const EdgeInsets.only(
                top: 52.0,
              ),
              child: Column(
                children: [
                  Container(
                    width: 940,
                    height: 277,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.3),
                      color: Color(0xFF121212),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 125,
                            height: 41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.3),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/clock.png',
                                  width: 18,
                                  height: 18,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '23:59',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(0, 0, 0, 0.87),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 32),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/pin.png',
                                      width: 21,
                                      height: 21,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Primary Trade',
                                      style: TextStyle(
                                        fontSize: 21.4,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color.fromRGBO(255, 255, 255, 0.87),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Image.asset(
                                      'assets/images/rocket.png',
                                      width: 18,
                                      height: 18,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '23.54%',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color.fromRGBO(255, 255, 255, 0.87),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/earth.png',
                                      width: 18,
                                      height: 18,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'Token Name:',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Manrope',
                                        color: Color.fromRGBO(255, 255, 255, 0.87),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text( 
                                      "Shimeka Inu (\$SHIMEKA)",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color.fromRGBO(255, 255, 255, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Initial:",
                                                  style: TextStyle(
                                                    fontSize: 18, 
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Manrope',
                                                    color: Color.fromRGBO(255, 255, 255, 0.87)
                                                  )
                                                ),
                                                SizedBox(width: 14),
                                                Text(
                                                  "0.2 ETH  ",
                                                  style: TextStyle(
                                                    fontSize: 14, 
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Manrope',
                                                    color: Color.fromRGBO(255, 255, 255, 0.6)
                                                  )
                                                ),
                                              ]
                                            )
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Worth:",
                                                  style: TextStyle(
                                                    fontSize: 18, 
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Manrope',
                                                    color: Color.fromRGBO(255, 255, 255, 0.87)
                                                  )
                                                ),
                                                SizedBox(width: 8),
                                                Text(
                                                  "0.25 ETH  ",
                                                  style: TextStyle(
                                                    fontSize: 14, 
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Manrope',
                                                    color: Color.fromRGBO(255, 255, 255, 0.6)
                                                  )
                                                ),
                                              ]
                                            )
                                          )
                                        ]
                                      )
                                    ),
                                    Container(
                                      width: 200,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/dollar.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'Price:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '\$0.00000304',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/cap.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'Market Cap:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '\$156,528',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                          
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 210,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/scale.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'Taxes:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '🅑 0.0% | 🅢 0.0%',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]
                                )
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/scale.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'Time Elapsed:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '8s',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/increase.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'P/L w/Tax:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '23.54%',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/decrease.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'Price Impact:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '5.32%',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                          
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 240,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/faceDollar.png',
                                            width: 18,
                                            height: 18,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            'Expected Payout:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text( 
                                            '0 ETH',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 11),
                                      width: 257,
                                      height: 41,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(28, 28, 28, 0.77),
                                      ),
                                      child: Image.asset(
                                        'assets/images/leftArrow.png',
                                        width: 30,
                                        height: 30,
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 11),
                                      width: 257,
                                      height: 41,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(28, 28, 28, 0.77),
                                      ),
                                      child: Image.asset(
                                        'assets/images/leftArrow.png',
                                        width: 30,
                                        height: 30,
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 11),
                                      width: 257,
                                      height: 41,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(28, 28, 28, 0.77),
                                      ),
                                      child: Image.asset(
                                        'assets/images/leftArrow.png',
                                        width: 30,
                                        height: 30,
                                      )
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 61,
                      bottom: 33,
                      left: 58,
                      right: 58
                    ),
                    width: 635,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.3),
                      color: Color(0xFF121212),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/delete.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Anti-Rug",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/delete.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Auto-Sell",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/delete.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Trailing",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "-50%",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/leftArrow.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Lo | Hi",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                    SizedBox(width: 2),
                                    Image.asset(
                                      'assets/images/rightArrow1.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "+200%",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/delete.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Buy Dip",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "0.01 ETH",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Treshold",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell X ETH",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/sell.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Sell",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell X %",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/increase.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Chart",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 252,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell 25%",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 252,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell 50%",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 252,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell 75%",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 252,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell 100%",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell X ETH",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell Max TX",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 153.76,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sell X Tokens",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/reset.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Reset",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/blueLed.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Refresh",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/redLed.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    Text(
                                      "Stop",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                width: 115,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromRGBO(28, 28, 28, 0.77),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/delete.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Delete",
                                      style: TextStyle(
                                        fontSize: 16, 
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffD7D7D7)
                                      )
                                    ),
                                  ]
                                )
                              ),
                            ]
                          )
                        ),
                      ]
                    )
                  ),
                ]
              )
            )
          ]
        )
      )
    );
  }
}
