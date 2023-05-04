import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase{
    String resultText;
    if(resultScore >= 80 ){
      resultText = "You are awarded!";
    } else{
      resultText = "You lose";

    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          heightFactor: 10,
          child: Column(
            children: [
              Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
              ),
              FloatingActionButton(onPressed: resetQuiz, child: Text("Reset Quiz!", textAlign: TextAlign.center,),)
            ],
          ),
        )
    );
  }
}
