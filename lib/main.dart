import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "YoGuru",
            style: TextStyle(fontFamily: "Merienda"),
          ),
          backgroundColor: Colors.indigo[400],
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Container(
                height: 200,
                color: Colors.white,
                child: FlareActor(
                  "assets/login.flr",
                  animation: "yogiccircle",
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.indigo[400])),
                padding: EdgeInsets.all(16.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 25,
                      child: Image(
                        image: AssetImage("assets/Google.png"),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Continue with google",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
