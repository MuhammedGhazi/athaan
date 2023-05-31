import 'package:athaan/features/home/presentation/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AthaanApp());
}

class AthaanApp extends StatelessWidget {
  const AthaanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Athaan Times',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
