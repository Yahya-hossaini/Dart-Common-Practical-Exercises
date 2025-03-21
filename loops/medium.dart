//----------------------------------------------------------------------------------------------------
//Palindrome Checker
void palindromeChecker(int number){
  int originalNumber = number;
  int reverse = 0;

  //reversing the number
  while(number != 0){
    reverse = reverse * 10 + number % 10;
    number = number ~/ 10;
  }

  //comparing the original number and reversd number
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