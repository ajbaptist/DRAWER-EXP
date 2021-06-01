import 'package:drawer/home.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USER NAME'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.assignment),
      ),
      body: Container(
        child: Center(child: Text('THIS IS USER NAME PAGE')),
      ),
    );
  }
}
