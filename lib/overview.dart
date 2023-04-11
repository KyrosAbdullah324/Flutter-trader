import 'package:flutter/material.dart';
import './component/topbar.dart';

class OverView extends StatelessWidget {
  const OverView({Key? key}) : super(key: key);

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
                top: 32.0,
                bottom: 26.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 26.0,
                      left: 19,
                      right: 30
                    ),
                    width: 530,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.3),
                      color: Color(0xFF121212),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                            fontSize: 26.0, 
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                            color: Color.fromRGBO(255, 255, 255, 0.87)
                          )
                        ),
                        SizedBox(height: 17),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.3),
                            color: Color(0xFF191919),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.3),
                                  color: Color(0xFF121212),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Profit",
                                          style: TextStyle(
                                            fontSize: 12.51, 
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Manrope',
                                            color: Color.fromRGBO(255, 255, 255, 0.6)
                                          )
                                        ),
                                        SizedBox(width: 5),
                                        Image.asset(
                                          'assets/images/profit.png',
                                          width: 14.3,
                                          height: 7.43,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "25.2934 ETH",
                                      style: TextStyle(
                                        fontSize: 21.44, 
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color.fromRGBO(255, 255, 255, 0.87)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(width: 17),
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 24.0,
                                  bottom: 26.0,
                                  left: 19,
                                  right: 30
                                ),
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.3),
                                  color: Color(0xFF121212),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Loss",
                                          style: TextStyle(
                                            fontSize: 12.51, 
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Manrope',
                                            color: Color.fromRGBO(255, 255, 255, 0.6)
                                          )
                                        ),
                                        SizedBox(width: 5),
                                        Image.asset(
                                          'assets/images/loss.png',
                                          width: 14.3,
                                          height: 7.43,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "4.24 ETH",
                                      style: TextStyle(
                                        fontSize: 21.44, 
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color.fromRGBO(255, 255, 255, 0.87)
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        SizedBox(height: 17),
                        Text(
                          "Top Earners",
                          style: TextStyle(
                            fontSize: 26.0, 
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                            color: Color.fromRGBO(255, 255, 255, 0.87)
                          )
                        ),
                        SizedBox(height: 17),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 17,
                            right: 43
                          ),
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFF000000),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                            children: [
                              Text(
                                "#1 KVLE",
                                style: TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.87)
                                )
                              ),
                              Text(
                                "+260 ETH",
                                style: TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF52D273)
                                )
                              ),
                            ]
                          )
                        ),
                        SizedBox(height: 17),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 17,
                            right: 43
                          ),
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                            children: [
                              Text(
                                "#2 Shiesty",
                                style: TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.87)
                                )
                              ),
                              Text(
                                "+200 ETH",
                                style: TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF52D273)
                                )
                              ),
                            ]
                          )
                        ),
                        SizedBox(height: 17),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 17,
                            right: 43
                          ),
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                            children: [
                              Text(
                                "#3 Killo",
                                style: TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.87)
                                )
                              ),
                              Text(
                                "+160 ETH",
                                style: TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF52D273)
                                )
                              ),
                            ]
                          )
                        )
                      ]
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 26.0,
                      left: 19,
                      right: 30
                    ),
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.3),
                      color: Color(0xFF121212),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Trade History",
                          style: TextStyle(
                            fontSize: 26.0, 
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope',
                            color: Color.fromRGBO(255, 255, 255, 0.87)
                          )
                        ),
                        SizedBox(height: 17),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.3),
                                  color: Color(0xff1D1717),
                                ),
                                child: Icon(Icons.call_made, color: Color.fromRGBO(255, 255, 255, 0.87), size: 15)
                              ),
                              SizedBox(width: 14.3),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Shimeka",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          ),
                                          Text(
                                            "-6.00 ETH",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          )
                                        ]
                                      )
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "12 Aug 2022 | 10:00",
                                            style: TextStyle(
                                              fontSize: 14.3, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6)
                                            )
                                          )
                                        ]
                                      )
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 18),
                          child: Divider(
                            color: Color.fromRGBO(160, 160, 160, 0.2),
                            thickness: 0.89,
                          )
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.3),
                                  color: Color(0xff1D1717),
                                ),
                                child: Icon(Icons.call_made, color: Color.fromRGBO(255, 255, 255, 0.87), size: 15)
                              ),
                              SizedBox(width: 14.3),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Shimeka",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          ),
                                          Text(
                                            "-6.00 ETH",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          )
                                        ]
                                      )
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "12 Aug 2022 | 10:00",
                                            style: TextStyle(
                                              fontSize: 14.3, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6)
                                            )
                                          )
                                        ]
                                      )
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 18),
                          child: Divider(
                            color: Color.fromRGBO(160, 160, 160, 0.2),
                            thickness: 0.89,
                          )
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.3),
                                  color: Color(0xff1D1717),
                                ),
                                child: Icon(Icons.call_received, color: Color.fromRGBO(255, 255, 255, 0.87), size: 15)
                              ),
                              SizedBox(width: 14.3),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Shimeka",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          ),
                                          Text(
                                            "-6.00 ETH",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          )
                                        ]
                                      )
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "12 Aug 2022 | 10:00",
                                            style: TextStyle(
                                              fontSize: 14.3, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6)
                                            )
                                          )
                                        ]
                                      )
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 18),
                          child: Divider(
                            color: Color.fromRGBO(160, 160, 160, 0.2),
                            thickness: 0.89,
                          )
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.3),
                                  color: Color(0xff1D1717),
                                ),
                                child: Icon(Icons.call_made, color: Color.fromRGBO(255, 255, 255, 0.87), size: 15)
                              ),
                              SizedBox(width: 14.3),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Shimeka",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          ),
                                          Text(
                                            "-6.00 ETH",
                                            style: TextStyle(
                                              fontSize: 17.87, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.87)
                                            )
                                          )
                                        ]
                                      )
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "12 Aug 2022 | 10:00",
                                            style: TextStyle(
                                              fontSize: 14.3, 
                                              fontFamily: 'Manrope',
                                              color: Color.fromRGBO(255, 255, 255, 0.6)
                                            )
                                          )
                                        ]
                                      )
                                    )
                                  ]
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Active Trades",
                    style: TextStyle(
                      fontSize: 26.0, 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                      color: Color.fromRGBO(255, 255, 255, 0.87)
                    )
                  ),
                  SizedBox(height: 17),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/activetradeup.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(14.3),
                          ),
                          margin: EdgeInsets.only(right: 30),
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shimeka",
                                style: TextStyle(
                                  fontSize: 24, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Colors.white
                                )
                              ),
                              SizedBox(height: 6),
                              Container(
                                width: 74,
                                height: 29,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF221540),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_upward, color: Color(0xff52D273), size: 20),
                                    Text(
                                      "474%",
                                      style: TextStyle(
                                        fontSize: 12, 
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color(0xff52D273)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 36),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "0.05 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 20,
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "0.23 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 23),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 131,
                                      height: 37,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF221540),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.check_circle_outline , color: Colors.white, size: 25),
                                          SizedBox(width: 6),
                                          Text(
                                            "Cash Out",
                                            style: TextStyle(
                                              fontSize: 17, 
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/activetradedown.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(14.3),
                          ),
                          margin: EdgeInsets.only(right: 30),
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DrAI",
                                style: TextStyle(
                                  fontSize: 24, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Colors.white
                                )
                              ),
                              SizedBox(height: 6),
                              Container(
                                width: 74,
                                height: 29,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF221540),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_downward, color: Color(0xffff5315), size: 20),
                                    Text(
                                      "20%",
                                      style: TextStyle(
                                        fontSize: 12, 
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffff5315)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 36),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "0.05 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 20,
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "0.36 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 23),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 131,
                                      height: 37,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF221540),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.check_circle_outline , color: Colors.white, size: 25),
                                          SizedBox(width: 6),
                                          Text(
                                            "Cash Out",
                                            style: TextStyle(
                                              fontSize: 17, 
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/activetradedown.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(14.3),
                          ),
                          margin: EdgeInsets.only(right: 30),
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doke",
                                style: TextStyle(
                                  fontSize: 24, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Colors.white
                                )
                              ),
                              SizedBox(height: 6),
                              Container(
                                width: 74,
                                height: 29,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF221540),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_downward, color: Color(0xff52D273), size: 20),
                                    Text(
                                      "5%",
                                      style: TextStyle(
                                        fontSize: 12, 
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color(0xff52D273)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 36),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "0.15 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 20,
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "0.146 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 23),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 131,
                                      height: 37,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF221540),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.check_circle_outline , color: Colors.white, size: 25),
                                          SizedBox(width: 6),
                                          Text(
                                            "Cash Out",
                                            style: TextStyle(
                                              fontSize: 17, 
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/activetradeup.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(14.3),
                          ),
                          margin: EdgeInsets.only(right: 30),
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Toshi",
                                style: TextStyle(
                                  fontSize: 24, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Colors.white
                                )
                              ),
                              SizedBox(height: 6),
                              Container(
                                width: 74,
                                height: 29,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF221540),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_upward, color: Color(0xffff5315), size: 20),
                                    Text(
                                      "47%",
                                      style: TextStyle(
                                        fontSize: 12, 
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Manrope',
                                        color: Color(0xffff5315)
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 36),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "1.42 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 20,
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ether.png',
                                            width: 13,
                                            height: 20,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "66.74 ETH",
                                            style: TextStyle(
                                              fontSize: 13, 
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              ),
                              SizedBox(height: 23),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 131,
                                      height: 37,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF221540),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.check_circle_outline , color: Colors.white, size: 25),
                                          SizedBox(width: 6),
                                          Text(
                                            "Cash Out",
                                            style: TextStyle(
                                              fontSize: 17, 
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Manrope',
                                              color: Colors.white
                                            )
                                          ),
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          ),
                        )
                      ]
                    )
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}
