import 'package:flutter/material.dart';

class NoteEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Note'),
      ),
      body: Center(
        child: Container(
          child: Text('Note Editor'),
        ),
      ),
    );
  }
}
