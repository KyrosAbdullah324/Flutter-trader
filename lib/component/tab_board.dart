import 'package:flutter/material.dart';
import 'package:swift/component/setting_tabs/approve.dart';
import 'package:swift/component/setting_tabs/buy.dart';
import 'package:swift/component/setting_tabs/copytrade.dart';
import 'package:swift/component/setting_tabs/general.dart';
import 'package:swift/component/setting_tabs/sell.dart';
import 'package:swift/component/setting_tabs/wallets.dart';
import 'package:swift/component/setting_tabs/account.dart';

class CustomTabView extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int> onTabChanged;

  const CustomTabView({
    Key? key,
    required this.tabs,
    required this.onTabChanged,
  }) : super(key: key);

  @override
  _CustomTabViewState createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xff535353),
              ),
            ),
          ),
          child: Row(
            children: List.generate(
              widget.tabs.length,
              (index) => Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                    widget.onTabChanged(index);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      // color: _selectedTabIndex == index
                      //     ? Color(0xffB8B2F9)
                      //     : Colors.transparent,
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: _selectedTabIndex == index
                              ? Color(0xffB8B2F9)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        widget.tabs[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _selectedTabIndex == index
                              ? Color(0xFFFFFFFF)
                              : Color(0xffB5B2B2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: _selectedTabIndex,
            children: [
              // Add your tab contents here
              Container(
                child: Center(
                  child: GeneralTabContent(),
                ),
              ),
              Container(
                child: Center(
                  child: WalletsTabContent(),
                ),
              ),
              Container(
                child: Center(
                  child: BuyTabContent(),
                ),
              ),
              Container(
                child: Center(
                  child: SellTabContent(),
                ),
              ),
              Container(
                child: Center(
                  child: ApproveTabContent(),
                ),
              ),
              Container(
                child: Center(
                  child: CopyTradeTabContent(),
                ),
              ),
              Container(
                child: Center(
                  child: AccountTabContent(),
                ),
              ),SizedBox(width: 50,)
            ],
          ),
        ),
      ],
    );
  }
}
