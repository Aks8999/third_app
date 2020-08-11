import 'package:flutter/material.dart';
import 'package:third_app/card.dart';
import 'package:third_app/drawer.dart';
import 'package:third_app/utils/Constants.dart';


class HomaPage extends StatefulWidget {
  @override
  _HomaPageState createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  TextEditingController _data= TextEditingController();
  var _mytext= "Change data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
            Constants.perfs.setBool("loggedIn", false);
            Navigator.pushReplacementNamed(context, "/login");
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: MyCard(mytext: _mytext, data: _data),
              ),
              RaisedButton(
                child: Text("List Page"),
                  onPressed: (){
                  Navigator.pushNamed(context, "/list");

                  },
              )
            ],
          ),

        ),
      ),
      drawer: drawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          _mytext= _data.text;
          setState(() {});
        },
      ),
    );

  }
}

