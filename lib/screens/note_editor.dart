import "dart:math";

import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";
import "package:flutter_todo_app/style/app_styles.dart";

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({super.key});

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  int color_id = Random().nextInt(AppStyle.cardsColor.length);
  TextEditingController _titleController = TextEditingController();
  TextEditingController _mainController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
          backgroundColor: AppStyle.cardsColor[color_id],
          elevation: 0.0,
          title: Text("Add new note")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Note Title"),
            style: AppStyle.mainTitle,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            controller: _mainController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Note Description"),
            style: AppStyle.mainContent,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppStyle.accentColor,
        onPressed: () async {
          FirebaseFirestore.instance
              .collection("Notes")
              .add({
                "note_title": _titleController.text,
                "note_description": _mainController.text
              })
              .then((value) => {print(value.id), Navigator.pop(context)})
              .catchError((error) => print("failed to push $error"));
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
