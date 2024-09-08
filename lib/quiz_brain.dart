import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Một số loài mèo có thể dị ứng với con người.', true),
    Question('Bạn có thể dẫn một con bò xuống cầu thang nhưng không thể dẫn lên cầu thang.', false),
    Question('Khoảng một phần tư số xương của con người nằm ở bàn chân.', true),
    Question('Máu của loài sên có màu xanh lá cây.', true),
    Question('Tên họ của mẹ Buzz Aldrin là "Moon".', true),
    Question('Việc đi tiểu xuống biển là bất hợp pháp ở Bồ Đào Nha.', true),
    Question('Không thể gấp đôi một tờ giấy khô vuông hơn 7 lần.', false),
    Question('Ở London, nếu bạn chết trong tòa nhà Quốc hội, bạn sẽ được hưởng lễ tang nhà nước.', true),
    Question('Âm thanh lớn nhất do một con vật tạo ra là 188 decibel, đó là voi Châu Phi.', false),
    Question('Diện tích bề mặt của hai lá phổi người là khoảng 70 mét vuông.', true),
    Question('Google ban đầu được gọi là "Backrub".', true),
    Question('Sô cô la ảnh hưởng đến tim và hệ thần kinh của chó, một lượng nhỏ có thể gây tử vong.', true),
    Question('Ở Tây Virginia, Mỹ, nếu bạn vô tình đâm trúng một con vật, bạn có thể mang nó về nhà ăn.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Đã hoàn thành câu hỏi cuối cùng');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

