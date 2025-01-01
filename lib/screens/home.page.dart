import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.layout.dart'; // Import the MainLayout widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    String email = user?.email ?? 'No Email Found';

    return MainLayout(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome !!",
                style: TextStyle(fontSize: 40, color: Colors.deepPurpleAccent)),
          ],
        ),
      ),
      currentPage: 'Home', // Set the current page to 'Home' for highlighting
    );
  }
}
