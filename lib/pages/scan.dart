import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Scan QR Code',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // QR Scanner Button
            Center(
              child: GestureDetector(
                onTap: () {
                  // Add your QR scan logic here
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 16, 80, 98),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Scan from Gallery Button
            ElevatedButton.icon(
              onPressed: () {
                // Add gallery upload logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.photo_library, size: 24),
              label: const Text(
                'Scan from Gallery',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            // View History Button
            ElevatedButton.icon(
              onPressed: () {
                // Add history viewing logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 16, 80, 98),
                side: const BorderSide(color: Color.fromARGB(255, 16, 80, 98)),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.history, size: 24),
              label: const Text(
                'View Scan History',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
