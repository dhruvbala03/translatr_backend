import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController textController;
  final String labelText;
  final bool isPassword;
  final double maxWidth;
  final bool isEnabled;
  final onEdit;

  const MyTextField({
    Key? key,
    required this.textController,
    required this.labelText,
    this.isPassword = false,
    this.maxWidth = double.infinity,
    this.isEnabled = true,
    this.onEdit,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: widget.maxWidth,
        child: TextField(
          onEditingComplete: widget.onEdit ?? () {}, // do nothing if null
          enabled: widget.isEnabled,
          keyboardType: TextInputType.text,
          controller: widget.textController,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: widget.labelText,
          ),
        ),
      ),
    );
  }
}
