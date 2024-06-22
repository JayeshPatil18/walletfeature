import 'package:animated_snack_bar/animated_snack_bar.dart';

import 'package:flutter/material.dart';


void mySnackBarShow(BuildContext context, String text){
  AnimatedSnackBar.material(
    text,
    type: AnimatedSnackBarType.info,
    desktopSnackBarPosition: DesktopSnackBarPosition.topCenter,
  ).show(context);
}