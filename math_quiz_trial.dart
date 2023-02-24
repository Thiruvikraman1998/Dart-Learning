import 'dart:io';

double? prompt(String promptText) {
    print(promptText);
    double? mynum = double.parse(stdin.readLineSync()!);
    return mynum;
}

class Mathquiz {
    String? question;
    double? answer;

    Mathquiz(String aQuestion, double aAnswer) {
        this.question = aQuestion;
        this.answer = aAnswer;
    }
    
    // Mathquiz(this.question, this.answer);    // another way to create a constructor

}
void main() {

    List<dynamic> ques = [Mathquiz("5 + 5", 10.0), Mathquiz("5 - 5", 0.0), Mathquiz('2 * 2', 4.0), Mathquiz("10 / 2", 5.0), Mathquiz("7-3", 4.0)];

    //double? userInput;
    int score = 0;
    int count = 0;

    // Using for in loop..
    
    for(Mathquiz mathquestions in ques){
        count++;
        print('\n Question no. ${count}');
        double? userInput = prompt(mathquestions.question!);
        if(userInput == mathquestions.answer){
            print('\n correct');
            score++;
        } else {
            print('\n wrong');
        }
    }

    // Using For each loop..   Remove the comments for the below forEach() loop to check how it works.

    // ques.forEach((mathquestions){
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
    
    print('Your total score is: ${score}');

    if(score >=4){
        print("you are good.");
    } else if(score <=3 && score != 0){
        print("Need to improve");
    } else {
        print("You're too bad");
    }
    print('The average is ${score / ques.length *100}');
}