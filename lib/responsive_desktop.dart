import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appBar: AppBar(
//   title: Text('logIn'),
//   centerTitle: true,
//   elevation: 0.0,
// ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              height: double.infinity,
              child: Center(
                child: Text(
                  'DeskTop View',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Log In Now To Your Accout',
                      style: Theme.of(context).textTheme.headline6),
                  TextField(
                    //or TextFormField
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        labelText: 'Email'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(20.0))
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)))),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      // Theme(data:ThemeData(
                      //   inputDecorationTheme: InputDecorationTheme(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(50.0),),
                      //     ),
                      //   ),
                      // ),
                      //   child:
                      Expanded(
                        child: Container(
                          height: 40.0,
                          color: Colors.lightBlue,
                          child: MaterialButton(
                            child: Text('log In'),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          height: 40.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text('log Out'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
