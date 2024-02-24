import 'package:audio_book_app/widgets/app_drawer.dart';
import 'package:audio_book_app/widgets/playlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});
  static const routeName = '/audioplayerscreen';

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('My Library'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Positioned(
                height: 200,
                width: 200,
                top: 10,
                left: 115,
                child: Image.asset('assets/output.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const Positioned(
                height: 200,
                width: 200,
                top: 10,
                left: 115,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.fast_rewind,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.pause,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.fast_forward,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const PlayList()
        ],
      ),
    );
  }
}
