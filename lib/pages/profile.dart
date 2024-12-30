import 'package:fintech/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 16, 80, 98);
    const accentColor = Color.fromARGB(255, 55, 140, 160); // Lighter shade of the primary color
    const backgroundColor = Color(0xFFF5F5F5); // Light background

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Add a profile image in this path
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Abebe",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "abebe@gmail.com",
                    style: GoogleFonts.lato(
                      color: accentColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileItem(
                    icon: Icons.person,
                    title: "Edit Profile",
                    color: primaryColor,
                    onTap: () {
                      // Add your edit profile logic here
                    },
                  ),
                  ProfileItem(
                    icon: Icons.settings,
                    title: "Settings",
                    color: primaryColor,
                    onTap: () {
                      // Add your settings logic here
                    },
                  ),
                  ProfileItem(
                    icon: Icons.notifications,
                    title: "Notifications",
                    color: primaryColor,
                    onTap: () {
                      // Add your notifications logic here
                    },
                  ),
                  ProfileItem(
                    icon: Icons.lock,
                    title: "Privacy",
                    color: primaryColor,
                    onTap: () {
                      // Add your privacy logic here
                    },
                  ),
                  ProfileItem(
                    icon: Icons.logout,
                    title: "Log Out",
                    color: primaryColor,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  title: Text(
                    "Your Activity",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  subtitle: Text(
                    "View your recent activity",
                    style: GoogleFonts.lato(color: accentColor),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: primaryColor),
                  onTap: () {
                    // Add your activity page logic here
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const ProfileItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          title,
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: color),
        onTap: onTap,
      ),
    );
  }
}
