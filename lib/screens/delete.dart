

import 'package:empapp_db/screens/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Empdelete extends StatefulWidget {
  @override
  _EmpdeleteState createState() => _EmpdeleteState();
}

class _EmpdeleteState extends State<Empdelete> {
  TextEditingController getcode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Delete Employee"),
          backgroundColor: Colors.blue,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(10.0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getcode,
                decoration: InputDecoration(
                  hintText: "Enter employee code",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                String getempcode=getcode.text;
                print(getempcode);
              },
              color: Colors.green,
              child: Text("DELETE"),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
