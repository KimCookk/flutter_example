import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data_view_model.dart'; // ViewModel
import 'data_screen.dart'; // View

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => DataViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DataScreen(),
    );
  }
}
