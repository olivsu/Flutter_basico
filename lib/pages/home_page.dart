import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Suane'),
              accountEmail: Text('oliveiraanara25@gmail.com'),
            ),
            ListTile(
              title: Text("Exe01"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe01');
              },
            ),
            ListTile(
              title: Text("Exe02"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe02');
              },
            ),
            ListTile(
              title: Text("Exe03"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe03');
              },
            ),
            ListTile(
              title: Text("Exe04"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe04');
              },
            ),
            ListTile(
              title: Text("Exe05"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe05');
              },
            ),
            ListTile(
              title: Text("Exe06"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe06');
              },
            ),
            ListTile(
              title: Text("Exe07"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe07');
              },
            ),
            ListTile(
              title: Text("Exe08"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe08');
              },
            ),
            ListTile(
              title: Text("Exe09"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe09');
              },
            ),
            ListTile(
              title: Text("Exe10"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe10');
              },
            ),
            ListTile(
              title: Text("Exe11"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe11');
              },
            ),
            ListTile(
              title: Text("Exe12"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe12');
              },
            ),
            ListTile(
              title: Text("Exe13"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe13');
              },
            ),
            ListTile(
              title: Text("Exe14"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/Exe14');
              },
            ),
          ],
        ),
      ),
    );
  }
}
