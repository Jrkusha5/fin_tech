import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10, // Example count, can be replaced with dynamic data
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                "Notification ${index + 1}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "This is a sample notification description. It can contain details about updates, deposits, or other alerts.",
              ),
              trailing: const Text(
                "2h ago",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          );
        },
      ),
    );
  }
}
