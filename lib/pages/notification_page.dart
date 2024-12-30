import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the Google Fonts package

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Notifications',
          style: GoogleFonts.lato(  // Use GoogleFonts.lato() to apply the font
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: 10, // Example count, can be replaced with dynamic data
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 3,
            shadowColor: Colors.grey.withOpacity(0.2),
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: const Color.fromARGB(255, 16, 80, 98),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                "Notification ${index + 1}",
                style: GoogleFonts.lato(  // Apply Lato font here
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: const Text(
                "This is a sample notification description. It can contain details about updates, deposits, or other alerts.",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              trailing: const Text(
                "2h ago",
                style: TextStyle(color: Color.fromARGB(255, 12, 10, 10), fontSize: 12),
              ),
              onTap: () {
                // Handle notification tap
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(
                      "Notification ${index + 1}",
                      style: GoogleFonts.lato(),  // Use Lato font in the dialog title
                    ),
                    content: const Text(
                      "Detailed information about the notification can be displayed here.",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Close",
                          style: GoogleFonts.lato(),  // Apply Lato font here
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
