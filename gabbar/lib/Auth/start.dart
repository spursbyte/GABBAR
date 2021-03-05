import 'package:flutter/material.dart';
import '../Auth/signup.dart';
import '../Auth/login.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            Container(
              height: 400,
              child: Image(image: AssetImage("assets/logo.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: 'Welcome to ', style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text('Gabbar App',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 30.0),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('LOGIN', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Colors.orange,
                  ),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text('SIGN UP', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      primary: Colors.orange,
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
