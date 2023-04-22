import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirty_days_of_flutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Image.asset("assets/images/login_image.png", fit: BoxFit.fill),
              Text("Welcome $name ", style: TextStyle(fontSize: 28)),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(changebutton ? 50 : 8),
                          color: Colors.deepOrangeAccent,
                        ),
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
