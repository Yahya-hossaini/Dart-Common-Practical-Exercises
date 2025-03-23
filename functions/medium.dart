//----------------------------------------------------------------------------------------------------
// Check if a String is a Palindrome
String isPalindrom(String inputString){
  String originalString = inputString;

  //reversing the string
  String reverse = inputString.split('').reversed.join('');

  //comparing the original state with current.
  if(originalString == reverse){
    return 'Is palindrom';
  }else{
    return 'Is not Palindrom';
  }
}
//----------------------------------------------------------------------------------------------------
//
int fibonacci(int number){
  //exception handling
  if(number <= 0){
    print('please enter a positive number!');
  }

  //base cases
  if(number == 1){
    return 0;
  }
  if(number == 2){
    return 1;
  }

  int first = 0;
  int second = 1;
  int nth = 0;
  //for loop, for going all the way to nth number.
  for(int i = 3; i <= number; i++){
    nth = first + second;
    first = second;
    second = nth;
  }
  return nth;
}
//----------------------------------------------------------------------------------------------------
//Find the GCD of Two Numbers using the Euclidean algorithm.
int GCD(int number1, int number2){
  //base case, if the number2 is 0, then the GCD is number1
  if(number2 == 0){
    return number1;
  }

  //Recursive part.
  return GCD(number2, number1 % number2);
}
//----------------------------------------------------------------------------------------------------
//Check if a Number is Prime
bool isPrime(int number){
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
//Calculate Factorial Using Recursion
int factorial(int number){
  if(number <= 1){
    return 1;
  }

  return number * factorial(number - 1);
}