import "package:flutter/material.dart";
import "package:flutter_ozoo/screens/login.dart";
import "package:flutter_ozoo/screens/signup.dart";
import "package:flutter_ozoo/screens/welcome.dart";
void main(List<String> args) {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) => const Welcome(),
        "/login" : (context) => const Login(),
        "/signup" : (context) => const Signup(),
      },
    );
  }
}