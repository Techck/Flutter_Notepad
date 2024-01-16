import 'package:flutter/material.dart';
import 'package:catan/diary.dart';

class IndexScreen extends StatelessWidget {

  List<Diary> diaries = List.generate(20, (index) => Diary('$index', 'Title $index', 'Content $index'));

  IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日记本"),
      ),
      body: ListView.builder(
        itemCount: diaries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(diaries[index].title),
            subtitle: Text(diaries[index].content),
          );
        },
      ),
    );
  }
}