import 'package:empapp_db/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Empupdate extends StatefulWidget {
  @override
  _EmpupdateState createState() => _EmpupdateState();
}

class _EmpupdateState extends State<Empupdate> {
  TextEditingController getcode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Update Employee"),
          backgroundColor: Colors.blue,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: getcode,
              decoration: InputDecoration(
                hintText: "Enter the employee code",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10.0,),
            RaisedButton(onPressed: (){

              String getempcode=getcode.text;
              print(getempcode);
            },

            color: Colors.green,
            child: Text("UPDATE"),),

          ],
          ),
        ),
      ),
    );
  }
}
