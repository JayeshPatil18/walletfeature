import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'send_address');
                },
                child: ListTile(
                  leading: Icon(Icons.account_balance_wallet_outlined, color: Colors.black),
                  title: Text('Address'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_outline, color: Colors.black),
                title: Text('Username'),
              ),
              SizedBox(height: 20)
            ],
          ),
        );
      },
    );
  }
}