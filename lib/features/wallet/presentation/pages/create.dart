import 'package:bankwallet/features/wallet/presentation/widgets/customsnackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/textstyle.dart';
import '../../data/repository/wallet_service.dart';
import '../widgets/button.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({super.key});

  @override
  _CreateWalletState createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController walletNameController = TextEditingController();
  TextEditingController pinController = TextEditingController();

  bool _passwordVisible = false;

  void _toggleVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  String? _validateInput(String? input, int index) {

    if (input != null) {
      input = input.trim();

    }

    switch (index) {
      case 0:
        if (input == null || input.isEmpty) {
          return 'Enter Wallet Name';
        }
        break;

      case 1:
        if (input == null || input.isEmpty) {
          return 'Enter Pin';
        }
        break;

      default:
        return null;
    }
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
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wallet Name'),
                  SizedBox(height: 8),
                  TextFormField(
                    autovalidateMode:
                    AutovalidateMode.onUserInteraction,
                    validator: ((value) {
                      return _validateInput(value, 0);
                    }),
                    controller: walletNameController,
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
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pincode'),
                SizedBox(height: 8),
                TextFormField(
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    return _validateInput(value, 1);
                  }),
                  controller: pinController,
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
                onPressed: () async{
                  FocusScope.of(context).unfocus();
                  bool isValid = _formKey.currentState!.validate();

                  if(isValid){
                    int result = await createWallet(walletNameController.text.toString(), pinController.text.toString());

                    if(result == 200){
                      Navigator.pushNamed(context, '/');
                    } else{
                      mySnackBarShow(context, 'Something went wrong!');
                    }
                  }
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