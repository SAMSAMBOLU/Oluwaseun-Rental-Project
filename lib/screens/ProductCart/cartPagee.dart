// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable, unnecessary_string_escapes, prefer_interpolation_to_compose_strings

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterwave_standard/flutterwave.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:renta/models/productCart.dart';
import 'package:uuid/uuid.dart';

class CartPage extends StatelessWidget {
  static var routeName;

   CartPage({super.key});
  // static String routeName = "/cart";
  // String routeName = CartPage.routeName;

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Let's order fresh items for you
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "My Order",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
    
                // list view of cart
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                      itemCount: value.cartItems.length,
                      padding: EdgeInsets.all(12),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                            child: ListTile(
                              leading: Image.asset(
                                value.cartItems[index][2],
                                height: 36,
                              ),
                              title: Text(
                                value.cartItems[index][0],
                                style: const TextStyle(fontSize: 18),
                              ),
                              subtitle: Text(
                                '\₦' + value.cartItems[index][1],
                                style: const TextStyle(fontSize: 12),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.cancel),
                                onPressed: () =>
                                    Provider.of<CartModel>(context, listen: false)
                                        .removeItemFromCart(index),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
    
                // total amount + pay now
    
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(color: Colors.green[200]),
                            ),
    
                            const SizedBox(height: 8),
                            // total price
                            Text(
                              '\₦${value.calculateTotal()}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
    
                  InkWell(
                          onTap: () => _handlePayment(context, value),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green.shade200),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: const [
                                Text(
                                  'Pay Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}



// herer///

void _handlePayment(BuildContext context, CartModel value)async {
    final Customer customer = Customer(
      name: "Samson Smauel",
      phoneNumber: "09152288675",
      email: "topsticksam@gmail.com",
    );
    final Flutterwave flutterwave = Flutterwave(
      context: context,
      publicKey: "FLWPUBK_TEST-9a976b1825cee4564e1923ff1413c8b8-X",
      currency: "NGN",
      redirectUrl: "https://facebook.com",
      txRef: Uuid().v1(),
      amount: '${value.calculateTotal()}',
      customer: customer,
      paymentOptions: "ussd, card, barter, payattitude",
      customization: Customization(title: "My Payment"),
      isTestMode: true,
    );
    
final resp = await flutterwave.charge();
  }








//  _onPressed() {
//     final currentState = this.formKey.currentState;
//     if (currentState != null && currentState.validate()) {
//       this._handlePaymentInitialization();
//     }
//   }

//   _handlePaymentInitialization() async {
//     final Customer customer = Customer(email: "customer@customer.com");

//     final Flutterwave flutterwave = Flutterwave(
//         context: context,
//         publicKey: this.publicKeyController.text.trim().isEmpty
//             ? this.getPublicKey()
//             : this.publicKeyController.text.trim(),
//         currency: this.selectedCurrency,
//         redirectUrl: 'https://facebook.com',
//         txRef: Uuid().v1(),
//         amount: this.amountController.text.toString().trim(),
//         customer: customer,
//         paymentOptions: "card, payattitude, barter, bank transfer, ussd",
//         customization: Customization(title: "Test Payment"),
//         isTestMode: this.isTestMode);
//     final ChargeResponse response = await flutterwave.charge();
//     this.showLoading(response.toString());
//     print("${response.toJson()}");
//   }

//   String getPublicKey() {
//     return "";
//   }

//   void _openBottomSheet() {
//     showModalBottomSheet(
//         context: this.context,
//         builder: (context) {
//           return this._getCurrency();
//         });
//   }

//   Widget _getCurrency() {
//     final currencies = ["NGN", "RWF", "UGX", "KES", "ZAR", "USD", "GHS", "TZS"];
//     return Container(
//       height: 250,
//       margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
//       color: Colors.white,
//       child: ListView(
//         children: currencies
//             .map((currency) => ListTile(
//                   onTap: () => {_handleCurrencyTap(currency)},
//                   title: Column(
//                     children: [
//                       Text(
//                         currency,
//                         textAlign: TextAlign.start,
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       SizedBox(height: 4),
//                       Divider(height: 1)
//                     ],
//                   ),
//                 ))
//             .toList(),
//       ),
//     );
//   }

//   _handleCurrencyTap(String currency) {
//     setState(() {
//       selectedCurrency = currency;
//       currencyController.text = currency;
//     });
//     Navigator.pop(context);
//   }
  

//   Future<void> showLoading(String message) {
//     return showDialog(
//       context: this.context,
//       barrierDismissible: true,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Container(
//             margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
//             width: double.infinity,
//             height: 50,
//             child: Text(message),
//           ),
//         );
//       },
//     );
//   }
// }