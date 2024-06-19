import 'package:bankwallet/features/wallet/presentation/pages/home.dart';
import 'package:bankwallet/shared/constants/colors.dart';
import 'package:bankwallet/shared/routes/route_generator.dart';
import 'package:flutter/material.dart';

import 'features/wallet/presentation/pages/swap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: mainAppColor,
      ),
      initialRoute: 'create',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}