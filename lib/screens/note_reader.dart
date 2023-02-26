import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";
import "package:flutter_todo_app/style/app_styles.dart";

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;
  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.doc['note_title'], style: AppStyle.mainTitle),
            Text(widget.doc['note_description'], style: AppStyle.mainContent),
          ],
        ),
      ),
    );
  }
}
