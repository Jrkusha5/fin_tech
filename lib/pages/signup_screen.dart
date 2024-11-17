// // lib/pages/signup_screen.dart
// import 'package:flutter/material.dart';
// import 'main_page.dart';

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: IconButton(
//                 icon: Icon(Icons.arrow_back),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               "Create a Smartpay account",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 suffixIcon: Icon(Icons.visibility_off),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
//               ),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => MainPage()),
//                 );
//               },
//               child: Text("Sign Up"),
              
//             ),
            
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:fintech/pages/main_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Create a Smartpay account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            // Name TextField
            TextField(
              decoration: InputDecoration(
                hintText: "Anabella Angela",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Email TextField
            TextField(
              decoration: InputDecoration(
                hintText: "anabellangella@mail.com",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Password TextField with visibility toggle
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                   Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
                  // Add your sign-up logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // OR Divider
            Row(
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("OR"),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 20),
            // Google and Apple Sign-In Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/google.png', // Place Google icon in assets/images
                    height: 40,
                  ),
                  onPressed: () {
                    // Google Sign-In logic
                  },
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: Image.asset(
                    'assets/paypal.jpg', // Place Apple icon in assets/images
                    height: 40,
                  ),
                  onPressed: () {
                    // Apple Sign-In logic
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Sign In Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign In page
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
