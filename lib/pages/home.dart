import 'package:fintech/pages/notification_page.dart';
import 'package:fintech/widgets/action_button.dart';
import 'package:fintech/widgets/credit_card.dart';
import 'package:fintech/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 80, 90),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WELCOME BACK',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Tesloach Ker',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(), // Pushes the icon to the end
                  IconButton.outlined(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: const Column(
                      children: [
                        SizedBox(height: 110),
                        ActionButtons(),
                        SizedBox(height: 20),
                        TransactionList(),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
