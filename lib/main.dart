import 'package:flutter/material.dart';
import 'package:words_dictionary/words_definitions.dart';

void main() {
  runApp(const MyDictionary());
}

class MyDictionary extends StatefulWidget {
  const MyDictionary({Key? key}) : super(key: key);

  @override
  State<MyDictionary> createState() => _MyDictionaryState();
}

class _MyDictionaryState extends State<MyDictionary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text('Words Dictionary'),
        ),
        body: WordDefinition(),
      ),
    );
  }
}
