import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
           Image.asset("assets/images/login.png",
           fit: BoxFit.cover,),
            const SizedBox(
              height: 20,
            ),
            const Text("Welcome", style: TextStyle(
              color: Colors.indigoAccent,
              fontSize: 24,
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
                       print("Hello!");
                     },
                     style: TextButton.styleFrom(),
                     child: const Text("Login"),


                 ),
                ],
              ),
            ),




        ],

      )
    );
  }
}
