void answers(selectAnswer) {
  print(selectAnswer);
}

void main() {
  int questionIndex = 0;
  var questions = [
    {
      'questionText': 'What\'s your favourite color',
      'answers': ['Blue', 'Black', 'Green']
    },
    {
      'questionText': 'What\'s your favourite Animal',
      'answers': ['Dog', 'Cat', 'Cow']
    },
    {
      'questionText': 'What\'s your name',
      'answers': ['Vikram', 'Raj', 'Rajesh']
    },
  ];

  (questions[questionIndex]['answers'] as List<String>).map((answer) {
    return answers(answer);
  }).toList();
}
