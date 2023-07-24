
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

                  child: SingleChildScrollView(
        child: Column(
          children: [
             Image.asset("assets/images/login.png",
             fit: BoxFit.cover,),
              const SizedBox(
                height: 20,
              ),
               Text("Welcome $name", style: const TextStyle(
                color: Colors.indigoAccent,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed( const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },

                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                       height: 40,
                       width: changeButton? 50 : 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent,

                          borderRadius: BorderRadius.circular( changeButton? 20 : 9),
                        ),
                       child: changeButton?const Icon(Icons.done,color: Colors.white): const Text("Login",
                           style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 19),
                       ),
                   ),
                    ),



                   //ElevatedButton(
                     //onPressed: ()  {
                       //  Navigator.pushNamed(context, MyRoutes.homeRoute);
                       //},
                     //style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                     //child: const Text("Login"),
                   //),
  ],
              ),
              ),

        ],
      )
                  ),
    );
  }
}
