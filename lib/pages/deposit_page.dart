import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DepositPage extends StatelessWidget {
  const DepositPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Deposit Funds',
         style: GoogleFonts.lato(color:Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
          
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Choose Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Payment Method Options
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.credit_card, color: Colors.blue),
                    title: const Text("Credit Card"),
                    trailing: Radio(
                      value: "credit_card",
                      groupValue: "payment_method",
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_balance_wallet, color: Colors.green),
                    title: const Text("Bank Transfer"),
                    trailing: Radio(
                      value: "bank_transfer",
                      groupValue: "payment_method",
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.paypal, color: Colors.blueAccent),
                    title: const Text("PayPal"),
                    trailing: Radio(
                      value: "paypal",
                      groupValue: "payment_method",
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Enter Amount",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "\$0.00",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.attach_money),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Deposit logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  backgroundColor: const Color.fromARGB(255, 16, 80, 98),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Deposit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
