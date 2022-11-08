
import '../models/correct_answer.dart';

class CorrectAnswerRepository {
  static List<int> listHasCode = <int>[];

  static getCorrectAnswerDataList(int level) {
    if (level == 1) {
      listHasCode.clear();
    }
    
    List<CorrectAnswer> list = <CorrectAnswer>[];

    while (list.length < 5) 
    {
    
    }

    return list;
  }
}

void main() {
  for (int i = 1; i < 5; i++) {
    CorrectAnswerRepository.getCorrectAnswerDataList(i);
  }
}
