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
                          hintText: 'Enter amount',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: backgroundColor),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Balance: 5', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                DropdownButton<String>(
                  value: selectedCurrency1,
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCurrency1 = newValue!;
                    });
                  },
                  items: <String>['VIBLE', 'Polygon', 'Uniswap']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
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
                          hintText: 'Enter amount',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: backgroundColor),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(' ', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                DropdownButton<String>(
                  value: selectedCurrency2,
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCurrency2 = newValue!;
                    });
                  },
                  items: <String>['VIBLE', 'Polygon', 'Uniswap']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
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