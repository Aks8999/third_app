import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
    @required String mytext,
    @required TextEditingController data,
  }) : _mytext = mytext, _data = data, super(key: key);

  final String _mytext;
  final TextEditingController _data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(child: Image.asset("assets/image.jpg"),
            ),
          ),
          Text(_mytext,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _data,
              decoration: InputDecoration(
                hintText: "enter data",
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: "name",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
