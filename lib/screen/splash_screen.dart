import 'package:classtest1/screen/grid_view_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GridViewScreen()));
    });
  }

@override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(child: Text("Shreejan Manandhar",
      style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
    );
  }
}
