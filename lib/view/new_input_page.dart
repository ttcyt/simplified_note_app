import 'package:flutter/material.dart';

class NewInputPage extends StatefulWidget {
  const NewInputPage({super.key});

  @override
  State<NewInputPage> createState() => _NewInputPageState();
}

class _NewInputPageState extends State<NewInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              children: [
                TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Title...',
                    hintStyle: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                  ),
                ),
                TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  maxLines: 30,
                  decoration: InputDecoration(
                    hintText: 'Content...',
                    hintStyle: TextStyle(fontSize: 30, color: Colors.white60),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.save,
          size: 40,
        ),
      ),
    );
  }
}