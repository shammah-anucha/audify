import 'package:audio_book_app/screens/audio_player_screen.dart';
import 'package:audio_book_app/screens/convertin_screen.dart';
import 'package:audio_book_app/screens/home_screen.dart';
import 'package:audio_book_app/screens/logout_screen.dart';
import 'package:audio_book_app/screens/mylibrary_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Audify',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.orange, secondary: Colors.deepOrange),
          primaryColor: Colors.orange,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => const HomeScreen(),
          ConvertingScreen.routeName: (ctx) => const ConvertingScreen(),
          LogoutScreen.routeName: (ctx) => const LogoutScreen(),
          MyLibraryScreen.routeName: (ctx) => const MyLibraryScreen(),
          AudioPlayerScreen.routeName: (ctx) => const AudioPlayerScreen()
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
