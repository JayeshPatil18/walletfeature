import 'package:bankwallet/features/wallet/presentation/pages/address.dart';
import 'package:bankwallet/features/wallet/presentation/pages/home.dart';
import 'package:bankwallet/features/wallet/presentation/pages/swap.dart';
import 'package:flutter/material.dart';
import '../../features/wallet/presentation/pages/create.dart';

class RouteGenerator{
  Route<dynamic> generateRoute(RouteSettings settings){

    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomePage()
        );

      case 'create':
        return MaterialPageRoute(
            builder: (_) => const CreateWallet()
        );

      case 'swap':
        return MaterialPageRoute(
            builder: (_) => const SwapScreen()
        );

      case 'send_address':
        return MaterialPageRoute(
            builder: (_) => const SendAddress()
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