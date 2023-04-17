import 'package:flutter/material.dart';

class InputFieldApp extends StatelessWidget {
  const InputFieldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        // initialValue: "input value",
        style: const TextStyle(
          color: Colors.white, // Set the text color to blue
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: "hintText",
          labelText: "label text",
          border: OutlineInputBorder(),
        
        ));
  }
}
