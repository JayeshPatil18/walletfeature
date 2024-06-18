import 'package:flutter/material.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/textstyle.dart';
import '../../../../shared/constants/values.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text('Wallet', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        actions: [
          CircleAvatar(
            radius: 5, // Adjust the size of the dot as needed
            backgroundColor: dotColor, // Change the color of the dot here
          ),
          SizedBox(width: 5),
          Text('Polygon Mainnet', style: labelTextStyle.copyWith(fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 16),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    color: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: cardTextStyle,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$0.00',
                            style: balanceTextStyle,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '0x4937...53D3D',
                            style: addressTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: sendButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Send', style: buttonTextStyle),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: swapButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Swap', style: buttonTextStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 2,
                        indicatorColor: tokenTextColor,
                        tabs: [
                          Tab(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 18, top: 5),
                              child: Text("Tokens", style: labelTextStyle),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 18, top: 5),
                              child: Text("Activity", style: labelTextStyle),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Your TabBarView children widgets here
                      Expanded(
                      child: ListView(
                      children: [
                        ListTile(
                        leading: CircleAvatar(
                        backgroundColor: tokenColor,
                        child: Text('P', style: cardTextStyle),
                      ),
                      title: Text('Polygon', style: TextStyle(color: tokenTextColor, fontWeight: FontWeight.w600)),
                      subtitle: Text('MATIC', style: TextStyle(color: tokenSubTextColor)),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('0 MATIC', style: TextStyle(color: tokenTextColor, fontWeight: FontWeight.w600, fontSize: 16)),
                          Text('0.00 USD', style: TextStyle(color: tokenSubTextColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                          Expanded(
                            child: ListView(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: tokenColor,
                                    child: Text('P', style: cardTextStyle),
                                  ),
                                  title: Text('Polygon', style: TextStyle(color: tokenTextColor)),
                                  subtitle: Text('MATIC', style: TextStyle(color: tokenSubTextColor)),
                                  trailing: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('0 MATIC', style: TextStyle(color: tokenTextColor)),
                                      Text('0.00 USD', style: TextStyle(color: tokenSubTextColor)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
