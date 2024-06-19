import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/textstyle.dart';
import '../widgets/button.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({super.key});

  @override
  _CreateWalletState createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {

  bool _passwordVisible = false;

  void _toggleVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

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
        title: Center(child: Text('Create Wallet', style: swapLabel)),
        actions: [SizedBox(width: 48)], // Placeholder for centering title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wallet Name'),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.w400),
                    hintText: 'Eg. Jack\'s Wallet',
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
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pincode'),
                SizedBox(height: 8),
                TextField(
                  obscureText: !_passwordVisible, // This makes the text obscure (password type)
                  keyboardType: TextInputType.number, // Keyboard type for numbers
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _toggleVisibility,
                    ),
                    hintStyle: TextStyle(fontWeight: FontWeight.w400),
                    hintText: 'Eg. 6-digit numeric pin',
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
            SizedBox(height: 24),
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