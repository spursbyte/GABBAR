import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: Container(
                  width: size.width,
                  height: 200,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Text("This is the Home Page"),
              ),
            ],
          )
    );
  }
}
