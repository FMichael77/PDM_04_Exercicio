import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white38,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal[800],
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Positioned(
                          left: 50,
                          right: 50,
                          top: -80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 80,
                                backgroundImage:
                                    AssetImage('images/michael.jpg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'FRANCISCO MICHAEL',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 25,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'FLUTTER DEVELOPER',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 15,
                                  letterSpacing: 2.0,
                                  color: Colors.lightGreenAccent[700],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  buildContainer(Icons.phone),
                                  buildContainer(Icons.location_on),
                                  buildContainer(Icons.email),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Container buildContainer(IconData icon) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.lightGreen, spreadRadius: 1),
      ],
      color: Colors.lightGreenAccent[700],
    ),
    child: Center(
      child: Icon(icon, color: Colors.white),
    ),
  );
}
