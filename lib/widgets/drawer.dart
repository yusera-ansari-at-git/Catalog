import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  final imageUrl =
      "https://img.freepik.com/free-psd/3d-illustration-person-with-long-hair_23-2149436197.jpg?t=st=1732597854~exp=1732601454~hmac=01ae09757e9c53120d97774963650c2c43c1fdc1bd00a6fc62061e8cd52eac32&w=1380";

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
