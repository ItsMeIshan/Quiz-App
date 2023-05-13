import 'package:quizapp/screens/about/about.dart';
import 'package:quizapp/screens/user_profile/user_profile.dart';
import 'package:quizapp/screens/home/home.dart';
import 'package:quizapp/screens/topics/topics.dart';
import 'package:quizapp/screens/login/login.dart';

var appRoutes = {
  // '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/topics': (context) => const TopicsScreen(),
};
