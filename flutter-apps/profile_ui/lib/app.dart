import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.greenAccent,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Profile UI'),
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.green[300], Colors.green[50]])),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/girl.jpg"),
                ),
                ListTile(
                  title: Center(
                      child: Text(
                    "Linh Fish",
                    style: TextStyle(fontSize: 20),
                  )),
                  subtitle: Center(
                      child: Text(
                    'He is a handsome boy',
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Message'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Hire me'),
                      ),
                    ]),
                ListTile(
                  title: Text("About me",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  subtitle: Text(
                      'My name is Linh. I’m a developer website and blogger.My major is IT and is studying in college of information and comunnicatin tachnology of Can Tho university.I like playing football and shuttlecock kicking.In my freetime I often read techonology books and watch youtube about IT.',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
