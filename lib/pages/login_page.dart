
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const Text("Welcome", style: TextStyle(
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
                   ElevatedButton(
                     onPressed: ()  {
                         Navigator.pushNamed(context, MyRoutes.homeRoute);
                       },
                     style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                     child: const Text("Login"),
                   ),
  ],
              ),
              ),

        ],
      )
                  ),
    );
  }
}
