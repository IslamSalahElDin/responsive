import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            width: double.infinity,
            child: Center(
              child: Text(
                'Mobile View',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Text('Log In Now To Your Accout',
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  height: 10.0,
                ),
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
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 30.0,
                  width: double.infinity,
                  color: Colors.amber,
                  child: MaterialButton(
                    child: Text('log In'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  color: Colors.red,
                  height: 30.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('log Out'),
                  ),
                ),
              ],
            ),
          ),
        ),
        //        Container(
        //          child: TextField(
        //
        //       ),
        // ),
      ]),
    );
  }
}
