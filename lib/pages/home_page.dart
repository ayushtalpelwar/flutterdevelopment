import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("New App"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Hi this is ayush"),
        ),
      ),
    );
  }
}
