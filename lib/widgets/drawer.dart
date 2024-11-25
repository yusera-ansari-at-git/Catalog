import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  final imageUrl =
      "https://img.freepik.com/premium-vector/cervical-retainer-icon-cartoon-illustration-cervical-retainer-vector-icon-web_96318-30233.jpg?w=1380";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 212, 200, 162),
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName: Text("Yusera"),
                accountEmail: Text("Yusera@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                textScaler: TextScaler.linear(1.4),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                "Account",
                textScaler: TextScaler.linear(1.4),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "Email",
                textScaler: TextScaler.linear(1.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
