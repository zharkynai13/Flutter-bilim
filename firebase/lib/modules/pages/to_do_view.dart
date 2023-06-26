import 'package:flutter/material.dart';

class ToDoView extends StatefulWidget {
  const ToDoView({super.key});

  @override
  State<ToDoView> createState() => _ToDoViewState();
}

class _ToDoViewState extends State<ToDoView> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Text"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 8,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Description"),
            ),
            CheckboxListTile(
              value: isCompleted,
              onChanged: (v) {
                setState(() {
                  isCompleted = v!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
