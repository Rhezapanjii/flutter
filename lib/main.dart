import 'package:flutter/material.dart';
import 'package:tugas_dicoding/edit%20profile.dart';
import 'package:tugas_dicoding/opsi.dart';
import 'animal.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // /*
  //   * This will make splash screen lasts for the duration of the delay task.
  //   * 300ms looks well for me, can adjust based on your preference.
  // */
  // await Future.delayed(const Duration(milliseconds: 300));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
            // primary: Colors.cyanAccent(),
            ),
      ),
      home: AnimalList(),
    );
  }
}
