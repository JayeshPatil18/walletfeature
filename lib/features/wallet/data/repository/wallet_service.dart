import 'package:http/http.dart' as http;
import 'dart:convert';

Future<int> createWallet(String walletName, String userPin) async {
  // Define the URL
  final url = Uri.parse('https://api.socialverseapp.com/solana/wallet/create');

  // Define the headers
  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Flic-Token': 'flic_30bda133e9a66763f4853217e496dec4ee0afa6ac16e6d1488ce87d708150650',
  };

  // Define the body parameters
  final body = jsonEncode({
    "wallet_name": "Pooja's Wallet",
    "network": "devnet",
    "user_pin": "123456",
  });

  try {
    // Make the POST request
    final response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    // Check the status code and handle the response
    if (response.statusCode == 200) {
      // Request was successful

      print('Wallet created successfully');
      print('Response body: ${response.body}');

      return 200;

    } else {
      // There was an error with the request
      print('Failed to create wallet');
      print('Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  } catch (e) {
    // Handle any exceptions
    print('Exception occurred: $e');
  }

  return -1;
}
