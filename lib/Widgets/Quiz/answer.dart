import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String optionText;

  Answer(this.selectHandler, this.optionText);

   @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(optionText),
        onPressed: selectHandler,
      ),
    );
  }
}
