import 'package:flutter/material.dart';
import 'users.dart';
import 'settings.dart';


/////////// Рекомендуемое задание 2.5 ///////////

void main() {
  runApp(const ListViewDemoScreen());
}

class ListViewDemoScreen extends StatefulWidget {
  const ListViewDemoScreen({Key? key}) : super(key: key);

  @override
  _ListViewDemoScreenState createState() => _ListViewDemoScreenState();
}

class _ListViewDemoScreenState extends State<ListViewDemoScreen> {

  ListTile _item (BuildContext context, int index){
   return ListTile (
    leading: Icon(Icons.account_circle),
    subtitle: list [ index ].private  ? Text ( privatePhoneText,
        style: privatePhoneStyle) : Text ( list [ index ].Phone,
        style: normalPhoneStyle),
    title: Text( list [ index ].Name,
        style: userNameStyle),
    trailing: list [ index ].private ? Icon (Icons.vpn_key_rounded) : null,
    onTap: (){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text ("Calling contact ${ list [ index ].Name } "),
          duration: Duration(milliseconds: 1000),
        ),
      );},
   );
  }

  @override
  Widget build(BuildContext context) {
    // SnackBar _snackBar = SnackBar(
    //   content: Text ("List item tapped"),
    //   duration: Duration(milliseconds: 500),
    // );
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: list.length,//20,
            itemBuilder: _item,
        ),
      ),
    );
  }
}

