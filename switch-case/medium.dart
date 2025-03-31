import 'dart:io';
import 'dart:math';

//----------------------------------------------------------------------------------------------------
//Rock, Paper, Scissors Game
void rockPaperScissorGame(){
  //taking user input
  stdout.write('Enter rock, paper, scissor: ');
  String? userChoice = stdin.readLineSync()?.toLowerCase();

  //taking CPU choice
  List<String> choices = ['rock', 'paper', 'scissor'];
  String computerChoice = choices[Random().nextInt(3)];
  print('Computer choice is: $computerChoice');

  //determining the winner
  switch(userChoice){
    case 'rock':
     if(computerChoice == 'rock'){
      print('It\'s a tie!');
     }else if(computerChoice == 'paper'){
      print('You lose! papar covers rock.');
     }else{
      print('You win! rock crush scissor.');
     }
     break;
    case 'paper':
     if(computerChoice == 'rock'){
      print('You win! paper cover rock.');
     }else if(computerChoice == 'paper'){
      print('It\'s a tie!');
     }else{
      print('You lose! scissor cut paper.');
     }
     break;
    case 'scissor':
     if(computerChoice == 'rock'){
      print('You lose! rock crush scissor.');
     }else if(computerChoice == 'paper'){
      print('You win! papar covers rock');
     }else{
      print('It\'s a tie!');
     }
     break;
  }
}

//----------------------------------------------------------------------------------------------------
//Determine Season by Month
String seasonDeterminerByMonth(int month){
  String season = '';

  switch(month){
    case 12:
    case 1:
    case 2:
      season = 'Winter';
      break;
    case 3:
    case 4:
    case 5:
      season = 'Spring';
      break;
    case 6:
    case 7:
    case 8:
      season = 'Summer';
      break;
    case 9:
    case 10:
    case 11:
      season = 'Fall';
      break;
  }

  return season;
}


//----------------------------------------------------------------------------------------------------
//Menu-Based ATM System
void ATMMenueSystem(){
  List<String> optionsMenue = ['Deposite', 'Withdraw', 'Check balance', 'Exit'];

  for(int i = 0; i < optionsMenue.length; i++){
    print('${i + 1} for ${optionsMenue[i]}');
  }
  
  stdout.write('Please chose your action: ');
  String? input = stdin.readLineSync();
  int? option = int.tryParse(input ?? '');


  double currentBalance = 248.12;

  if(option != null){
    switch(option){
    case 1:
      print('You have deposite to your account');
      break;
    case 2:
      print('You have withdraw from your account');
      break;
    case 3:
      print('Your balance is: \$${currentBalance}');
      break;
    case 4:
      print('Exit from your account');
    }
  }else{
    print('Invalide input, please enter a numerice value');
  }
}
//----------------------------------------------------------------------------------------------------
//Currency Converter
double currencyConvertor(int amount, String convertTo){
  double result = 0;

  switch(convertTo){
    case 'EUR':
    case 'eur':
      result = amount * 0.9239;
      break;
    case 'INR':
    case 'inr':
      result = amount * 85.39;
      break;
    case 'JPY':
    case 'jpy':
      result = amount * 149.57;
      break;
    default:
      print('please Enter a valide currency unit');
  }

  return result;
}
//----------------------------------------------------------------------------------------------------
//Student Grade System
String checkStudentGrade(int Score){
  String grade;

  switch(Score ~/ 10){
    case 10:
    case 9:
      grade = 'A';
      break;
    case 8:
      grade = 'B';
      break;
    case 7:
      grade = 'C';
      break;
    case 6:
      grade = 'D';
      break;
    default:
      grade = 'F';
  }
  return grade;
}