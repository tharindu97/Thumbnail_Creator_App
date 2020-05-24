import 'dart:io';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Photo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey globalKey = new GlobalKey();

  String headerText = "";
  String footerText = "";
  File _image;
  File _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset('image/SM.png'),
            SizedBox(height: 12,),
            Image.asset('image/Sample.png'),
            RepaintBoundary(
              key: globalKey,
              child: Stack(
                children: <Widget>[
                  _image != null ? Image.file(_image, height: 300,) : Container(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: <Widget>[
                        Text(headerText),
                        Spacer(),
                        Text(footerText)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              onChanged: (val){
                headerText = val;
              },
              decoration:  InputDecoration(
                hintText: "Header Text"
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              onChanged: (val){
                footerText = val;
              },
              decoration:  InputDecoration(
                hintText: "Footer Text"
              ),
            ),
            RaisedButton(
              onPressed: (){
                
                takeScreenshot();
              },
              child: Text('Save'),
            ) 
          ],
        ),
      ),
    );
  }

  takeScreenshot(){
  
  }
  save(){

  }
}

