import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainLayout extends StatelessWidget {
  final Widget body;
  final String currentPage; // The current page name to highlight in the AppBar

  const MainLayout({
    Key? key,
    required this.body,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    String email = user?.email ?? 'No Email Found';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
        centerTitle: true,
        title: Text(
          currentPage, // The page title will be set here
          style: TextStyle(
            fontSize: 30,
            color: Colors.white ,
            fontWeight: currentPage == 'Home' || currentPage == 'Profile'
                ? FontWeight.bold // Make it bold for the current page
                : FontWeight.normal, // Normal weight for other pages
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header (User info, avatar, etc.)
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/requester.png"),
                    radius: 30,
                  ),
                  const Divider(color: Colors.deepPurpleAccent,),
                  Text(
                    email,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            // Profile navigation
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              tileColor: currentPage == 'Home' ? Colors.grey[200] : null,
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              tileColor: currentPage == 'Profile' ? Colors.grey[200] : null,
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.science),
              title: const Text('TFLite Inference'),
              tileColor: currentPage == 'TFLite' ? Colors.grey[200] : null,
              onTap: () {
                Navigator.pushNamed(context, '/tflite');
              },
            ),
            const Divider(),
            // Logout functionality
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () async {
                  // Sign out functionality
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, '/login');
                }),
          ],
        ),
      ),
      body: body, // Body content for each page
    );
  }
}
