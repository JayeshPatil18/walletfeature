import 'package:bankwallet/features/wallet/presentation/pages/home.dart';
import 'package:bankwallet/features/wallet/presentation/pages/swap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  Route<dynamic> generateRoute(RouteSettings settings){

    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomePage()
        );

      case 'swap':
        return MaterialPageRoute(
            builder: (_) => const SwapScreen()
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            body: const Center(
              child: Text("ERROR"),
            ),
          );
        }
    );
  }
}