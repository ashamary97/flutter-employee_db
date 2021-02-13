


import 'package:empapp_db/screens/drawer.dart';
import 'package:flutter/material.dart';
class Empadd extends StatefulWidget {
  @override
  _EmpaddState createState() => _EmpaddState();
}

class _EmpaddState extends State<Empadd> {
  TextEditingController getname=TextEditingController();
  TextEditingController getaddress=TextEditingController();
  TextEditingController getphno=TextEditingController();
  TextEditingController getdesignation=TextEditingController();
  TextEditingController getemail=TextEditingController();
  TextEditingController getsalary=TextEditingController();
  TextEditingController getcompany=TextEditingController();
  TextEditingController getcode=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Employees"),
          backgroundColor: Colors.blue,
        ),
        drawer: MyDrawer(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: getname,
                  decoration: InputDecoration(
                    hintText: "Enter the name",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getaddress,
                  decoration: InputDecoration(
                      hintText: "Enter the address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getphno,
                  decoration: InputDecoration(
                      hintText: "Enter the phone number",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getdesignation,
                  decoration: InputDecoration(
                      hintText: "Enter the designation",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getemail,
                  decoration: InputDecoration(
                      hintText: "Enter email",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getsalary,
                  decoration: InputDecoration(
                      hintText: "Enter the salary",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getcompany,
                  decoration: InputDecoration(
                      hintText: "Enter the company name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getcode,
                  decoration: InputDecoration(
                      hintText: "Enter the employee code",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  String getEmpname=getname.text;
                  String getEmpaddress=getaddress.text;
                  String getEmpphone=getphno.text;
                  String getEmpdesig=getdesignation.text;
                  String getEmpemail=getemail.text;
                  String getEmpsal=getsalary.text;
                  String getEmpcomp=getcompany.text;
                  String getEmpcode=getcode.text;
                  print(getEmpname);
                  print(getEmpphone);
                  print(getEmpaddress);
                  print(getEmpdesig);
                  print(getEmpemail);
                  print(getEmpsal);
                  print(getEmpcomp);
                  print(getEmpcode);


                },
                color: Colors.green,
                  child: Text("SUBMIT"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
