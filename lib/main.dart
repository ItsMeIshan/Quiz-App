import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/bloc/firestore.dart';
import 'package:quizapp/bloc/models.dart';
import 'package:quizapp/routes.dart';
import 'package:quizapp/screens/home/home.dart';
import 'package:quizapp/screens/topics/topics.dart';
import 'package:quizapp/theme.dart';
import 'firebase_options.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      create: (_) => FirestoreService().streamReport(),
      initialData: Report(),
      child: MaterialApp(
        title: 'Quiz App',
        routes: appRoutes,
        theme: appTheme,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<FirebaseApp> _initializeApp  = Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform, );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeApp,
        builder: (context, snapshot){
          if(snapshot.hasError) {
            return const Text("Error");
          }
          if(snapshot.connectionState == ConnectionState.done) {
            return const HomeScreen();
          }
          return const Text("loading...");
        },
      ),
    );
  }
}
