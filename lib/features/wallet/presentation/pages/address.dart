import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/textstyle.dart';
import '../widgets/button.dart';

class SendAddress extends StatefulWidget {
  const SendAddress({super.key});

  @override
  _SendAddressState createState() => _SendAddressState();
}

class _SendAddressState extends State<SendAddress> {

  String selectedCurrency1 = 'VIBLE';
  final TextEditingController _controller = TextEditingController();

  final List<String> keys = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    '.', '0', '<',
  ];

  void onKeyPress(String key) {
    // Handle key press action here
    print('Key pressed: $key');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text('Send', style: swapLabel)),
        actions: [SizedBox(width: 48)], // Placeholder for centering title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_balance_wallet_outlined),
                    hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    hintText: 'Recipient Address',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 18.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,  // Remove the underline
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Adjust padding as needed
                        ),
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500), // Adjust text style as needed
                      ),
                    ),
                    DropdownButton<String>(
                      isExpanded: false,
                      value: selectedCurrency1,
                      icon: Row(
                        children: [
                          Icon(Icons.arrow_drop_down, size: 30, color: backgroundColor), // Dropdown arrow icon
                        ],
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCurrency1 = newValue!;
                        });
                      },
                      underline: Container(), // Remove default underline
                      items: <String>['VIBLE', 'Polygon', 'Uniswap']
                          .map<DropdownMenuItem<String>>((String value) {
                        IconData? icon;
                        switch (value) {
                          case 'VIBLE':
                            icon = Icons.money;
                            break;
                          case 'Polygon':
                            icon = Icons.polymer;
                            break;
                          case 'Uniswap':
                            icon = Icons.swap_horiz;
                            break;
                          default:
                            icon = null;
                        }

                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              if (icon != null) Icon(icon, size: 25), // Show icon if available
                              SizedBox(width: 8), // Adjust spacing as needed
                              Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Text(
                  'Balance: \$100.00', // Replace with your actual balance text
                  style: TextStyle(fontSize: 16, color: backgroundColor), // Adjust as needed
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 40, horizontal:10),
                child: Container(
                  padding: const EdgeInsets.only(top: 30, bottom: 20, right: 15, left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey.shade200,
                  ),
                  child: GridView.builder(
                    itemCount: keys.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => onKeyPress(keys[index]),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            keys[index],
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                backgroundColor: backgroundColor,
                text: 'Create',
              ),
            ),
          ],
        ),
      ),
    );
  }
}