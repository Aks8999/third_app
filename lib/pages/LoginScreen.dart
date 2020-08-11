import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_app/main.dart';
import 'package:third_app/utils/Constants.dart';
import 'HomePage.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/adarsh.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    icon: Icon(
                                        Icons.email
                                    ),

                                    hintText: "Enter email",
                                    labelText: "Email",

                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(height: 5.0,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter password",
                                    labelText: "Password",
                                    icon: Icon(
                                        Icons.vpn_key
                                    ),
                                  ),
                                  obscureText: true,

                                ),
                                SizedBox(height: 20.0,),
                                RaisedButton(
                                  onPressed: (){
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) => HomaPage()));
                                  Constants.perfs.setBool("loggedIn", true);
                                  Navigator.pushNamed(context, "/home");
                                  },
                                  child: Text("Sign in"),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}

