import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Adarsh Soyam"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset("assets/adarsh.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(colors: [Colors.red, Colors.pink])
            ),
          ),
          ListTile(
            title: Text("Account "),
            leading: Icon(Icons.person),
            subtitle: Text("Adarsh Soyam"),

          ),
          ListTile(
            title: Text("Email "),
            leading: Icon(Icons.mail),
            subtitle: Text("adarshsoyam19@gmail.com"),
          ),

        ],
      ),
    );
  }
}
