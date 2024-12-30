import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositPage extends StatefulWidget {
  const DepositPage({Key? key}) : super(key: key);

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  String? selectedPaymentMethod;
  final TextEditingController amountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Deposit Funds',
          style: GoogleFonts.lato(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                "Choose Payment Method",
                style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color.fromARGB(255, 16, 80, 98), Colors.teal.shade700],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _paymentOptionTile(
                      icon: Icons.credit_card,
                      color: Colors.blue,
                      title: "Credit Card",
                      value: "credit_card",
                    ),
                    const Divider(),
                    _paymentOptionTile(
                      icon: Icons.account_balance_wallet,
                      color: Colors.green,
                      title: "Bank Transfer",
                      value: "bank_transfer",
                    ),
                    const Divider(),
                    _paymentOptionTile(
                      icon: Icons.paypal,
                      color: Colors.blueAccent,
                      title: "PayPal",
                      value: "paypal",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Enter Amount",
                style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: amountController,
                decoration: InputDecoration(
                  hintText: "\$0.00",
                  hintStyle: GoogleFonts.lato(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.attach_money),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an amount";
                  }
                  if (double.tryParse(value) == null || double.parse(value) <= 0) {
                    return "Enter a valid amount";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              if (selectedPaymentMethod != null && amountController.text.isNotEmpty)
                _summarySection(),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Proceed with deposit logic
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Deposit of \$${amountController.text} via $selectedPaymentMethod initiated.",
                            style: GoogleFonts.lato(),
                          ),
                          backgroundColor: Colors.teal,
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                    backgroundColor: const Color.fromARGB(255, 16, 80, 98),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Deposit",
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _paymentOptionTile({
    required IconData icon,
    required Color color,
    required String title,
    required String value,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: Radio<String>(
        value: value,
        groupValue: selectedPaymentMethod,
        onChanged: (String? newValue) {
          setState(() {
            selectedPaymentMethod = newValue;
          });
        },
      ),
    );
  }

  Widget _summarySection() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      margin: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Summary",
              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method:",
                  style: GoogleFonts.lato(fontSize: 16),
                ),
                Text(
                  selectedPaymentMethod ?? "",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 250, 252, 252)),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Amount:",
                  style: GoogleFonts.lato(fontSize: 16),
                ),
                Text(
                  "\$${amountController.text}",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
