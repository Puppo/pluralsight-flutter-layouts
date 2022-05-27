import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xff009688),
        textTheme: const TextTheme(
            bodyText2: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)));
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme:
              theme.colorScheme.copyWith(secondary: const Color(0xff7c4dff))),
      home: Scaffold(
        appBar: AppBar(title: const Text("Building Layouts with Flutter")),
        body: const Center(
            child: Text(
          'Hello Flutter Layouts',
          style: TextStyle(fontSize: 24),
        )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.lightbulb_outline),
          onPressed: () {
            print('You rang');
          },
        ),
        persistentFooterButtons: [
          IconButton(
            icon: const Icon(Icons.add_comment),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_location),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
