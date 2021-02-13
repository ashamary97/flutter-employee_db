import 'package:empapp_db/screens/add.dart';
import 'package:empapp_db/screens/delete.dart';
import 'package:empapp_db/screens/search.dart';
import 'package:empapp_db/screens/update.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Asha"),
            accountEmail: Text("asha@gmail,com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black12,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Empadd()));
            },
            title: Text("Employee Add"),


          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Empsearch()));
            },
            title: Text("Employee Search"),


          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Empupdate()));
            },
            title: Text("Employee Update"),


          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Empdelete()));
            },
            title: Text("Employee Delete"),


          ),
        ],
      ),
    );
  }
}
