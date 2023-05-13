import 'package:flutter/material.dart';
import 'package:quizapp/bloc/auth.dart';
import 'package:quizapp/screens/login/login.dart';
import 'package:quizapp/screens/topics/topics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: AuthService().userStream,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          else if(snapshot.hasError) {
            return const Center(child: Text("Error"));
          }
          else if(snapshot.hasData) {
            return const TopicsScreen();
          }else{
            return const LoginScreen();
          }
        }
      ),
    );
  }
}
