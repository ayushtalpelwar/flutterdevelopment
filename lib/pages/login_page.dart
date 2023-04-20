import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirty_days_of_flutter/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Image.asset("assets/images/login_image.png", fit: BoxFit.fill),
            const Text("Welcome", style: TextStyle(fontSize: 28)),
            SizedBox(
              width: 40,
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,MyRoutes.homeroute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
