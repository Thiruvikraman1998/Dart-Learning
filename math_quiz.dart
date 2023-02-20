import 'dart:io';

//    <--- Math quiz --->

// We are creating a math quiz using all the concepts includes, loop, conditional statments, function, user inputs, classes, objects constructors and  lists.//

// creating a function to prompt question and get user input.
double? prompt(String promptText) {
  print(promptText);
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}

class Mathquiz {
  String? question;
  double? answer;

  Mathquiz(String aQuestion, double aAnswer) {
    this.question = aQuestion;
    this.answer = aAnswer;
  }
}

void main() {
  // Mathquiz question1 = Mathquiz("5 + 5", 10.0);
  // Mathquiz question2 = Mathquiz('10-6', 4.0);
  // Mathquiz question3 = Mathquiz("5 * 2", 10.0);

  // The above are the one way of asigning questions. When we have more questions like this we can use lists(array) to asign all the questions. In other words it is called as data structure.

  //Using Array(List)...

  List<Mathquiz> questions = [
    Mathquiz("5 + 5", 10.0),
    Mathquiz('10 - 6', 4.0),
    Mathquiz("5 * 2", 10.0)
  ]; // writing in new lines to make the code look clear.

  //eg scenario of below print statement. remove the comment to check how it runs.
  // print(questions[0].answer);
  // The above print statment first runs the questions[0] which is the first index, we already stored the values to the parameter aAnswer which is asigned to this.answer.. So when the compiler sees the line question[indexvalue].answer, it gets the answer stored for the desired one.

  double? userInput;

  // for(int i = 0; i < questions.length; i++){
  //     print(questions[i].question);
  //     userInput = double.parse(stdin.readLineSync()!);
  //     if(userInput == questions[i].answer){
  //         print('You are correct!');
  //     } else {
  //         print('You are wrong...');
  //     }
  // }

  // in the above we used forloop. As we use lists its better to use for in or for each loop.

  // Using for in loop with userinput from promt function.
  int score = 0;
  int count = 0;
  for (Mathquiz mathquestions in questions) {
    count++;
    print('\n Question no. ${count}');
    double? userInput = prompt(mathquestions
        .question!); // The user inputs gets from the function and stored to the userInput value.
    if (userInput == mathquestions.answer) {
      print('correct!');
      score++;
    } else {
      print('wrong');
    }
  }

  // forEach() Loop example below. Remove the below comments to check how foreach works.

  // questions.forEach((mathquestions){
  //     count++;
  //     print('\n Question no. ${count}');
  //     double? userInput = prompt(mathquestions.question!);
  //     if(userInput == mathquestions.answer) {
  //         print("\n Correct");
  //         score++;
  //     } else {
  //         print('wrong');
  //     }
  // });
  print('Your total score is ${score} \n');

  // The above loop first checks the first question and prompts the function that gets input from the user and stores the value to the userInput and then the if else check whether the answers are correct or not and the loop runs until the list count ends.

  if (score == questions.length) {
    print('You are good');
  } else if (score < questions.length && score != 0) {
    print("Need to improve.");
  } else {
    print('Too bad');
  }
}
