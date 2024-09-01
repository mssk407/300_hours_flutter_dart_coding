import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text(
          //     'Drawer Header',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 24,
          //     ),
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('User Name'),
            accountEmail: Text('mssal12380@email.com'),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(size: 42.0),
            ),
            otherAccountsPictures: [
              CircleAvatar(
              backgroundColor: Colors.cyan,
            ), CircleAvatar(
                backgroundColor: Colors.purple,
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Handle home navigation
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle settings navigation
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              // Handle settings navigation
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more list tiles as needed
        ],
      ),
    );
  }
}