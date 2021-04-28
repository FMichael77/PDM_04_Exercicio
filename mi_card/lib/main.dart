import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/michael.jpg'),
            ),
            Text(
              'Francisco Michael',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            buildCard('+55 86 97777 7777', Icons.phone),
            buildCard('michael.soarez.07@gmail.com', Icons.email),
          ],
        )),
      ),
    );
  }
}

Card buildCard(String text, IconData icon) {
  return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.teal.shade900,
              fontFamily: 'Source Sans Pro'),
        ),
      ));
}
