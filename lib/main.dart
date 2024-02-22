import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

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
      home: const MyHomePage(title: 'Audify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _file;
  getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      final file = File(result.files.single.path!);
      _file = file;
      setState(() {});
    } else {
      // User canceled the picker
      // You can show snackbar or fluttertoast
      // here like this to show warning to user
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please select file'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(50),
                  child: const Column(children: [
                    Text(
                      "Convert PDF to Audio",
                      style: TextStyle(
                          color: Color.fromARGB(255, 52, 51, 51),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3 simple steps:",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Import pdf, Click Convert to Audio, Listen to Audio on the App",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                      onPressed: () {
                        getFile();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor),
                      child: const Text(
                        'Import PDF',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Maximum Filesize: 5MB',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _file != null
                              ? "File Name:- "
                              : "No file is Selected",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(_file != null ? _file!.path.split("/").last : "",
                            // To show name of file selected
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _file != null
                            ? SizedBox(
                                width: 300.0,
                                height: 100.0,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        backgroundColor:
                                            Theme.of(context).primaryColor),
                                    child: const Text(
                                      'Convert Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            : Container(), // or any other placeholder widget
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
