// ignore_for_file: unnecessary_null_in_if_null_operators, deprecated_member_use

import 'package:swift/config/textstyle.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? textEditingController;
  final bool isObsecure;
  final Widget? sufix;
  final Widget? prefix;
  final TextInputType? inputType;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.textEditingController,
    this.isObsecure = false,
    this.sufix,
    this.inputType,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0),
        child: Container(
          width: 948,
          height: 61,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 18, 18, 18).withOpacity(0.6),
              borderRadius: BorderRadius.circular(14.3),
              border: Border(bottom: BorderSide.none)),
          // The letters written inside
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 61, // Set the height of the SizedBox widget
                  child: TextFormField(
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14.3,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.6),
                        ),
                    decoration: InputDecoration(
                      prefixIcon: prefix ?? null,
                      hintText: hintText,
                      border: InputBorder.none,
                      suffixIcon: Container(
                        margin: EdgeInsets.all(8),
                        height: 41,
                        width: 180,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // minimumSize: Size(180, 81),
                            primary: Color.fromARGB(255, 65, 61, 61)
                                .withOpacity(0.6),
                          ),
                          child: Text("Enter"),
                          onPressed: () {},
                        ),
                      ),
                      hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14.3,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.6),
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),       
        ),
    );
  }
}
