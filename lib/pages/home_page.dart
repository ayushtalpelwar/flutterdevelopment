import 'package:flutter/material.dart';
import 'package:thirty_days_of_flutter/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("30 Days Of Flutter"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("Hi this is ayush"),
        ),
      ),
    );
  }
}
