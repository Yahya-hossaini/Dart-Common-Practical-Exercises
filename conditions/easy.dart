
void main(){
  leapChecker(2024);
}

//----------------------------------------------------------------------------------------------------
//Leap Year Checker
void leapChecker(int year){
  if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){
    print('$year is a leap year.');
  }else{
    print('$year is not a leap year.');
  }
}
//----------------------------------------------------------------------------------------------------
//Minimum of Two Numbers
void determineMinimumOfTwoNumber(int number1, int number2){
  if(number1 > number2){
    print('$number2 is the smaller number.');
  }else if(number2 > number1){
    print('$number1 is the smaller number.');
  }else{
    print('They are equal.');
  }
}
//----------------------------------------------------------------------------------------------------
//Grade Calculator 
void gradeCalculator(int grade){
  if(grade < 60){
    print('F');
  }else if(grade < 70){
    print('D');
  }else if(grade < 80){
    print('C');
  }else if(grade < 90){
    print('B');
  }else if(grade > 90 && grade < 100){
    print('A');
  }else if(grade < 0 || grade > 100){
    print('Invalide');
  }
}
//----------------------------------------------------------------------------------------------------
//even-odd methode
void evenOddChecker(int number){
  if(number % 2 == 0){
    print('Even');
  }else{
    print('Odd');
  }
}
