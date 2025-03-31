//----------------------------------------------------------------------------------------------------
//Check for Vowel or Consonant 
void checkVowel(String letter){

  switch(letter){
    case 'A' || 'a':
      print('is vowel');
      break;
    case 'E' || 'e':
      print('is vowel');
      break;
    case 'I' || 'i':
      print('is vowel');
      break;
    case 'O' || 'o':
      print('is vowel');
      break;
    case 'U' || 'u':
      print('is vowel');
      break;
      default:
      print('is not vowel');
  }
}
//----------------------------------------------------------------------------------------------------
//Month Name and Days
void printMonths(int number){

  switch(number){
    case 1:
      print('January');
      break;
    case 2:
      print('February');
      break;
    case 3:
      print('March');
      break;
    case 4:
      print('April');
      break;
    case 5:
      print('May');
      break;
    case 6:
      print('June');
      break;
    case 7:
      print('July');
      break;
    case 8:
      print('August');
      break;
    case 9:
      print('September');
      break;
    case 10:
      print('October');
      break;
    case 11:
      print('November');
      break;
    case 12:
      print('December');
      break;
  }
}
//----------------------------------------------------------------------------------------------------
//Traffic Light System
void setTrafficLight(String color){

  switch(color){
    case 'yellow' || 'Yellow':
      print('Slow down');
      break;
    case 'red' || 'Red':
      print('Stop');
      break;
    case 'green' || 'Green':
      print('Go');
      break;
  }
}
//----------------------------------------------------------------------------------------------------
//Simple Calculator
void calculator(int number1, int number2, String operator){

  switch(operator){
    case '+':
      print(number1 + number2);
      break;
    case '-':
      print(number1 - number2);
      break;
    case '/':
      print(number1 / number2);
      break;
    case '*':
      print(number1 * number2);
      break;
  }
}
//----------------------------------------------------------------------------------------------------
//Day of the Week
void printWeekDays(int number){

  switch(number){
    case 1:
      print('Monday');
      break;
    case 2: 
      print('Tuesday');
      break;
    case 3: 
      print('Wednesday');
      break;
    case 4: 
      print('Thursday');
      break;
    case 5: 
      print('ّFriday');
      break;
    case 6: 
      print('Saturday');
      break;
    case 7: 
      print('Sunday');
      break;
  } 
}