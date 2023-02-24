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
    int option = 0;
  for (questionIndex = 0; questionIndex < questions.length; questionIndex++) {
    option++;
    print('Options: ${option}');
    (questions[questionIndex]['answers'] as List<String>).map((answer) {
      return answers(answer);
    }).toList();
  }
}
