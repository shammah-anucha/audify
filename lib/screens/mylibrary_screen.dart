import 'package:audio_book_app/screens/audio_player_screen.dart';
import 'package:audio_book_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class MyLibraryScreen extends StatefulWidget {
  const MyLibraryScreen({super.key});
  static const routeName = '/mylibrary';

  @override
  State<MyLibraryScreen> createState() => _MyLibraryScreenState();
}

class _MyLibraryScreenState extends State<MyLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    // Replace this with the actual path to your PDF file
    // final pdfFilePath =
    //     "/Users/shammahanucha/Documents/flutter_projects/audio_book_app/assets/The-Frog-Prince-Landscape-Book-CKF-FKB.pdf";

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('My Library'),
      ),
      drawer: AppDrawer(),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 18),
            width: 550,
            height: 100,
            color: Colors.white,
          ),
          Positioned(
            child: Image.asset(
              'assets/output.jpg', // Replace with your image asset path
              width: 180,
              height: 130,
            ),
          ),
          const Positioned(
            left: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("The Frog Prince"),
                Text("John Smith"),
              ],
            ),
          ),
          Positioned(
            left: 330,
            top: 70,
            child: IconButton(
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AudioPlayerScreen.routeName),
              icon: const Icon(
                Icons.play_circle_fill_rounded,
                color: Colors.orange,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
