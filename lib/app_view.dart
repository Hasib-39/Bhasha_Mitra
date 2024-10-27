import 'package:bhasha_mitra/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bhasha Mitra",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              surface: Colors.grey.shade200,
              onSurface: Colors.black, 
              primary: const Color(0xFF0141D8),
              outline: Colors.grey
          ),

      ),
      home: const HomeScreen(),
    );
  }
}
