import 'package:flutter/material.dart';
import 'package:hw_11/view/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: const MyHomePage(),
    );
  }
}
