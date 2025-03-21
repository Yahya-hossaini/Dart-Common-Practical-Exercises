import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = [1, 9, 10, 7, -3];

  armstorngNumberChecker(120);
}

//----------------------------------------------------------------------------------------------------
//Armstrong Number
void armstorngNumberChecker(int number){
  int originalNumber = number;
  List<int> digits = [];
  num sumOfresults = 0;

  int temp = number;
  while(temp != 0){
    digits.add(temp % 10);
    temp = temp ~/ 10;
  }

  for(int i = 0; i < digits.length; i++){
    sumOfresults += pow(digits[i], digits.length);
  }

  if(originalNumber == sumOfresults){
    print('Yes, $originalNumber is an Armstrong number');
  }else{
    print('No, $originalNumber is not an Armstrong number');
  }
}
//----------------------------------------------------------------------------------------------------
//Palindrome Checker
void palindromeChecker(int number){
  int originalNumber = number;
  int reverse = 0;

  while(number != 0){
    reverse = reverse * 10 + number % 10;
    number = number ~/ 10;
  }

  if(originalNumber == reverse){
    print('palindrome');
  }else{
    print('this is not alinddrome');
  }
}

//----------------------------------------------------------------------------------------------------
//Fibonacci Sequence
void printFibonacci(int number){
  if(number <= 0){
    print('please enter a positive number!');
  }

  int first = 0;
  int second = 1;

  for(int i = 0; i < number; i++){
    print(first);
    int next = first + second;
    first = second;
    second = next;
  }
}

//----------------------------------------------------------------------------------------------------
//finding the largest and smallest number in list
void largestSmallestFinder(List<int> numbers){
  int largest = numbers[0];
  int smallest = numbers[0];

  for(int i = 0; i < numbers.length; i++){
    if(numbers[i] > largest){
      largest = numbers[i];
    }

    if(numbers[i] < smallest){
      smallest = numbers[i];
    }
  }

  print('the largest number is: $largest');
  print('the smallest number is: $smallest');
}
//----------------------------------------------------------------------------------------------------
//Factorial number  
int factorial(int number){
  int result = 1;

  for(int i = 1; i <= number; i++){
    result *= i;
  }

  return result;
}
//----------------------------------------------------------------------------------------------------
//Prime numbers checker
bool primeChecker(int number){
  if(number < 0){
    return false;
  }

  for(int i = 2; i <= number ~/ 2; i++){
    if(number % i == 0){
      return false;
    }
  }

  return true;
}
//----------------------------------------------------------------------------------------------------
//count digit
void countDigit(int number){
  int originalNumber = number;
  int digit = 0;

  do{
    digit++;
    number = number ~/ 10;
  }while(number != 0);

  print('the number of digites for $originalNumber is: $digit');
}
//----------------------------------------------------------------------------------------------------
//reverse number
void reverseNumberOperator(int number){
  int originalNumber = number;
  int reverse = 0;

  while(number != 0){
    reverse = reverse * 10 + number % 10;
    number = number ~/ 10;
  }

  print('the $originalNumber reversd number is: $reverse');
}
//----------------------------------------------------------------------------------------------------
//multiplication table
void multiplicateNumbersTable(int number){
  for(int i = 1; i <= 10; i++){
    print('$i * $number : ${i * number}');
  }
}
//----------------------------------------------------------------------------------------------------
//sum of the first natural number
void naturalNumberSumer(int number){
  int sum = number * (number + 1) ~/ 2;
  print(sum);
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
//----------------------------------------------------------------------------------------------------
