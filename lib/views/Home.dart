import 'package:flutter/material.dart';
import 'package:myNotes/views/NoteEditor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          child: Text('Home Page'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NoteEditor(),
              ),
            );
          },
          child: Icon(Icons.add)),
    );
  }
}
