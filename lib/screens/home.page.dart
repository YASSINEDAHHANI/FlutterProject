import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          "HomePage",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("images/avatar.png"),
                    radius: 30,
                  ),
                  Text(
                    "Yassine",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Yassine@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Main'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.deepOrange[900],
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Calender'),
              onTap: () {},
            ),
            Divider(
              color: Colors.deepOrange[900],
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {},
            ),
            Divider(
              color: Colors.deepOrange[900],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.deepOrange[900],
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.deepOrange[900],
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40, color: Colors.deepOrangeAccent),
        ),
      ),
    );
  }
}
