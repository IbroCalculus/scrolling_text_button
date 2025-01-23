import 'package:flutter/material.dart';
import 'package:scrolling_text_button/scrolling_text_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScrollingTextButtonExample(),
    );
  }
}

class ScrollingTextButtonExample extends StatelessWidget {
  const ScrollingTextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
      ),
      body: Center(
        child: ScrollingTextButton(
            label: "Click Me, hello I am a test button",
            onPressed: () {
              print("You clicked on the button");
            }),
      ),
    );
  }
}

