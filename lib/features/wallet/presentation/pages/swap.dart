import 'package:flutter/material.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/textstyle.dart';
import '../widgets/button.dart';

class SwapScreen extends StatefulWidget {
  const SwapScreen({super.key});

  @override
  _SwapScreenState createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  String selectedCurrency1 = 'VIBLE';
  String selectedCurrency2 = 'Uniswap';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Center(child: Text('Swap', style: swapLabel)),
        actions: [SizedBox(width: 48)], // Placeholder for centering title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You pay'),
                      SizedBox(height: 8),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontWeight: FontWeight.w400),
                          hintText: 'Enter amount',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        DropdownButton<String>(
                          value: selectedCurrency1,
                          icon: Row(
                            children: [
                              Icon(Icons.arrow_drop_down), // Dropdown arrow icon
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
                                  if (icon != null) Icon(icon), // Show icon if available
                                  SizedBox(width: 8), // Adjust spacing as needed
                                  Text(value),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Text(
                      'Balance: \$100.00', // Replace with your actual balance text
                      style: TextStyle(fontSize: 12, color: Colors.grey), // Adjust as needed
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You receive'),
                      SizedBox(height: 8),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontWeight: FontWeight.w400),
                          hintText: 'Enter amount',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(' ', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        DropdownButton<String>(
                          value: selectedCurrency2,
                          icon: Row(
                            children: [
                              Icon(Icons.arrow_drop_down), // Dropdown arrow icon
                            ],
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCurrency2 = newValue!;
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
                                  if (icon != null) Icon(icon), // Show icon if available
                                  SizedBox(width: 8), // Adjust spacing as needed
                                  Text(value),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Quote Details',
              style: swapLabel
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Quote rate', style: quoteTextStyle),
                Text('1 \$VIBLE = 0.000015 UNI', style: quoteTextStyle),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order routing', style: quoteTextStyle),
                Text('Uniswap API', style: quoteTextStyle),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: backgroundColor,
                text: 'Swap',
              ),
            ),
          ],
        ),
      ),
    );
  }
}