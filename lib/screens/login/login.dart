import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/bloc/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true,),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome Back!!", style: TextStyle(fontSize: 35),),
            const SizedBox(height: 30,),
            LoginButton(color: Colors.white, icon: FontAwesomeIcons.google, text: "Sign in with Google", loginMethod: AuthService().googleLogin),
            const SizedBox(height: 20,),
            LoginButton(
              color: Colors.deepPurple.shade200,
              icon: FontAwesomeIcons.user,
              text: "Sign in Anonymously",
              loginMethod: AuthService().anonymousLogin,
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton(
      {Key? key,
      required this.color,
      required this.icon,
      required this.text,
      required this.loginMethod})
      : super(key: key);
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        loginMethod();
      },
      label: Text(text,),
      icon: Icon(
        icon,
        size: 20,
      ),
    );
  }
}
