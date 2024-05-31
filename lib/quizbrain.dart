import 'question.dart';

class QuestionBrain{

  int _num =0;


  final List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.',false),
    Question('Approximately one quarter of human bones are in the feet.',true),
    Question('A slug\'s blood is green.',false),
  ];

  void nextQuestion(){
    if(_num<_questionBank.length-1){
      _num++;
    }
  }

  String getQuestion(){
    return _questionBank[_num].questionText;
  }
  bool getAnswer(){
    return _questionBank[_num].questionAnswer;
  }
  bool isFinished() {
    if (_num >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _num = 0;
  }
}