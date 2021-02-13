import 'package:empapp_db/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Empsearch extends StatefulWidget {
  @override
  _EmpsearchState createState() => _EmpsearchState();
}

class _EmpsearchState extends State<Empsearch> {
  TextEditingController getcode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Search the employee"),
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
                  hintText: "Enter the employee code",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                String getempcode=getcode.text;
                print(getempcode);
              },
              child: Text("SEARCH"),
              color: Colors.green,)
            ],
          ),
        ),
      ),
    );
  }
}
