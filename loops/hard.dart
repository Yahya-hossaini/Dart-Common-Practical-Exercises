import 'dart:io';
import 'dart:math';

//----------------------------------------------------------------------------------------------------
//Number Guessing Game 
void numberGuessGame(){
  //generate random number
  int randomNumber = Random().nextInt(100) + 1;
  int guess = 0;
  int attempts = 0;

  print('welcome to the number guessing game!');
  print('I have selected a number between 1 and 100. try to guess it!');

  //while loops for controlling statements and user number of entered data
  while(guess !=randomNumber){
    //taking user input
    stdout.write('Enter your guess: ');
    guess = int .parse(stdin.readLineSync()!);
    attempts++;

    if(guess > randomNumber){
      print('too high, try again');
    }else if(guess < randomNumber){
      print('too low, try again');
    }else{
      print('Congratulations! You guessed the correct number: $randomNumber');
      print('It took you $attempts attempts.');
    }

    //preveinting the user from doing infite guesses
    if(attempts > 9){
      print('you have lost your chance by 10 times');
      return;
    }
  }
}
//----------------------------------------------------------------------------------------------------
//Pattern Printing - Pyramid 
void printPyramid(int n) {
  for (int i = 1; i <= n; i++) {
    // Print spaces
    for (int j = 0; j < n - i; j++) {
      stdout.write(' ');
    }
    // Print stars
    for (int k = 0; k < (2 * i - 1); k++) {
      stdout.write('*');
    }
    // Move to the next line
    print('');
  }
}
//----------------------------------------------------------------------------------------------------
//Find GCD (Greatest Common Divisor)

void GCD(int number1, int number2){
  // finding edge cases
  if(number1 == 0){
    print('The GCD is $number2');
    return;
  }
  if(number2 == 0){
    print('The GCD is $number1');
    return; 
  }

  //finding the smallest number
  int min = (number1 < number2) ? number1 : number2;

  for(int i = min; i > 1; i--){
    if(number1 % i == 0 && number2 % i == 0){
      print('The GCD of $number1 and $number2 is $i');
      return;
    }
  }
}

//----------------------------------------------------------------------------------------------------
//Collatz Sequence
void collatzSequenceOperation(int number){
  int count = 0;

  while(number != 1){
    if(number % 2 == 0){
        number = number ~/ 2;
        count++;
        print(number);
    }else{
      number = ((number * 3) + 1);
      count++;
      print(number);
    }
  }
  print('Number of steps to reach 1: $count');
}
//----------------------------------------------------------------------------------------------------
//Armstrong Number
void armstorngNumberChecker(int number){
  int originalNumber = number;
  List<int> digits = [];
  num sumOfresults = 0;

  //extracting the digits from number and then adding them to digits list
  int temp = number;
  while(temp != 0){
    digits.add(temp % 10);
    temp = temp ~/ 10;
  }

  // calculating the sum of digits raised by certain power
  for(int i = 0; i < digits.length; i++){
    sumOfresults += pow(digits[i], digits.length);
  }

  //checking if the number is Armstrong or not
  if(originalNumber == sumOfresults){
    print('Yes, $originalNumber is an Armstrong number');
  }else{
    print('No, $originalNumber is not an Armstrong number');
  }
}
//----------------------------------------------------------------------------------------------------
