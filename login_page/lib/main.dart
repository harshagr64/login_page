
import 'dart:ui';

import "package:flutter/material.dart";

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
            primarySwatch: Colors.blue
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(image: new AssetImage("assets/girl.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,

          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new FlutterLogo(size:  100.0),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(color: Colors.white, fontSize: 18.0)
                    ),
                  ),
                  child: new Container(
                    padding: EdgeInsets.all(35.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                    new TextFormField(
                      style: new TextStyle(fontSize: 16.0),
                      decoration: new InputDecoration(labelText: "Enter Email Here",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    new TextFormField(
                      decoration: new InputDecoration(labelText: "Enter Password Here",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),

                    new Padding(padding: EdgeInsets.only(top: 20.0)),



                       new MaterialButton(

                        textColor: Colors.white,
                        color: Colors.blue,
                        splashColor: Colors.deepOrangeAccent,
                        child: new Text("Login"),
                        height: 50.0,
                        minWidth: 150.0,
                        onPressed: () => {},
                       ),



              ],
              ),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}

