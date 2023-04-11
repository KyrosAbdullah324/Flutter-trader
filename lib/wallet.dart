import 'package:flutter/material.dart';
import './component/topbar.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

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
                    height: 650,
                    child: Column(
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
                          margin: EdgeInsets.only(bottom: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Connect New Wallet",
                                style: TextStyle(
                                  fontSize: 26.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.87)
                                )
                              ),
                              SizedBox(height: 17),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Wallet Name',
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF191919),
                                  contentPadding: EdgeInsets.symmetric(vertical: 21, horizontal: 23),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.3),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 14.3,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                ),
                              ),
                              SizedBox(height: 17),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter Wallet Key Phrase...',
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF191919),
                                  contentPadding: EdgeInsets.symmetric(vertical: 21, horizontal: 23),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.3),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 14.3,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                ),
                              ),
                              SizedBox(height: 27),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Link',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Manrope',
                                          color: Color.fromRGBO(0, 0, 0, 0.67),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        minimumSize: Size(157, 45),
                                      ),
                                    )
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
                          width: 530,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.3),
                            color: Color(0xFF121212),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Generate New Wallet",
                                style: TextStyle(
                                  fontSize: 26.0, 
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.87)
                                )
                              ),
                              SizedBox(height: 17),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Wallet Name',
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF191919),
                                  contentPadding: EdgeInsets.symmetric(vertical: 21, horizontal: 23),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.3),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 14.3,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope',
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                ),
                              ),
                              SizedBox(height: 27),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Generate',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Manrope',
                                          color: Color.fromRGBO(0, 0, 0, 0.67),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        minimumSize: Size(157, 45),
                                      ),
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        ),
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
                          "Connected Wallets",
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
            )
          ]
        )
      )
    );
  }
}
