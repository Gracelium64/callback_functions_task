import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  final Color cardColor;
  final void Function() onChanged;
  final void Function(int count) onType;

  const InputCounterBox({
    super.key,
    required this.cardColor,
    required this.onChanged,
    required this.onType,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  int _length = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _length = text.length;
                  widget.onChanged();
                  widget.onType(_length);
                });
              },
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Enter text',
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Text(
              'Length: $_length',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
