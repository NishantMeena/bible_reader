import 'package:bible_reading/screens/auth/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async{
  runApp(GetMaterialApp(home:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bible Reading App',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: SplashPage(),);
  }
}

class MyHomePage extends StatefulWidget {
  final String title = "";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
