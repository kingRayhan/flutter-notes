import 'package:flutter/material.dart';
import 'package:myNotes/models/Note.dart';
import 'package:myNotes/views/NoteEditor.dart';

class NoteList extends StatelessWidget {
  String formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  final List notes = [
    new Note(
      id: "1",
      title: "Note 1",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    new Note(
      id: "1",
      title: "Note 1",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    new Note(
      id: "2",
      title: "Note 2",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    new Note(
      id: "3",
      title: "Note 3",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    new Note(
      id: "4",
      title: "Note 4",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Notes 🔥'),
        ),
        body: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(notes[index].title),
              subtitle:
                  Text("Last edited on ${formatDate(notes[index].createdAt)}"),
            );
          },
          separatorBuilder: (_, __) => Divider(height: 1, color: Colors.grey),
          itemCount: notes.length,
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
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
