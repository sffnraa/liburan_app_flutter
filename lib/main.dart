import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screen/home_screen.dart';
import 'providers/destination_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DestinationProvider(),
      child: const LiburanApp(),
    ),
  );
}

class LiburanApp extends StatelessWidget {
  const LiburanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liburan',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF7F8FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF167D78),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}