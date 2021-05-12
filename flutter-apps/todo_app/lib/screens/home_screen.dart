import 'package:flutter/material.dart';
import 'package:todo_app/helpers/drawer_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E1 Todo'),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
