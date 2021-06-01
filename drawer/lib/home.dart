import 'package:drawer/pages/address.dart';
import 'package:drawer/pages/email.dart';
import 'package:drawer/pages/logout.dart';
import 'package:drawer/pages/number.dart';
import 'package:drawer/pages/username.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DRAWER EXP'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      drawer: buildDrawer(),
    );
  }

  buildDrawer() => Drawer(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            color: Colors.teal,
            child: Column(
              children: [
                buildListTile(
                    string: 'user name',
                    iconData: Icons.person,
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => User()));
                    }),
                buildListTile(
                    string: 'number',
                    iconData: Icons.phone,
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Number()));
                    }),
                buildListTile(
                    string: 'email',
                    iconData: Icons.email,
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Email()));
                    }),
                buildListTile(
                    string: 'address',
                    iconData: Icons.details,
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Address()));
                    }),
                Divider(
                  color: Colors.white,
                ),
                buildListTile(
                    string: 'sign out',
                    iconData: Icons.logout,
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogOut()));
                    }),
              ],
            ),
          ),
        ),
      );

  ListTile buildListTile(
      {required String string,
      required IconData iconData,
      required VoidCallback function}) {
    return ListTile(
      onTap: function,
      onLongPress: function,
      leading: Icon(
        iconData,
        size: 20,
        color: Colors.white,
      ),
      hoverColor: Colors.white,
      title: Text(
        string,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
