import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fintech/pages/top_up.dart';
import 'package:fintech/widgets/credit_card.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "Transfer",
          style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Choose Cards Section
            Text(
              "Choose cards",
              style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CreditCard(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Choose Recipients Section
            Text(
              "Choose recipients",
              style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            // Search Bar
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search contacts",
                  hintStyle: GoogleFonts.lato(color: Colors.grey[600]),
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search, size: 24, color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Recipients List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: index == 0 ? Colors.teal : Colors.grey,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (index == 0)
                            const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.check_circle, color: Colors.teal),
                              ),
                            ),
                          const SizedBox(height: 12),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("assets/profile.jpg"),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Abebe",
                            style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Bekele",
                            style: GoogleFonts.lato(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Continue Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TopUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Continue",
                style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
