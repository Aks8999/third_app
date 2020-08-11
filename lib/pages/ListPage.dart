import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var url="https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }


  getData() async{
    var res=await http.get(url);
    data= jsonDecode(res.body);
    print(data);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:  Text("List Page"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: data!= null?ListView.builder(
              itemBuilder:(context,index){
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID:${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              }
          )
              : Center(child: CircularProgressIndicator(),)

      ),
    );
  }
}
