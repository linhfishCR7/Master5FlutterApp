import 'package:flutter/material.dart';
import 'package:todo_app/screens/categories_screen.dart';
import 'package:todo_app/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("E1 ToDo"),
              accountEmail: Text("Catagory & Priprity based ToDo App"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new HomeScreen()));
              },
            ),
            ListTile(
              title: Text("Category"),
              leading: Icon(Icons.view_list),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new CategoriesScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
