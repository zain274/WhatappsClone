import 'package:flutter/material.dart';
import 'package:whatappsclone/chart_view.dart';


void main()
{
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     
      debugShowCheckedModeBanner: false,
  theme: ThemeData(
        primaryColor: Color(0xFF128c7e),
      ),
      home: chart_view(),
    );
  }
}