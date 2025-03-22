//----------------------------------------------------------------------------------------------------
//Reverse a String
String reverseString(String str){
  return str.split('').reversed.join('');
}//(●'◡'●) Super easy with dart's built-in methods.
//----------------------------------------------------------------------------------------------------
//Count Vowels in a String
int countVowels(String str){
  Set<String> vowels = {'a', 'i', 'o', 'u', 'e', 'A', 'I', 'O', 'U', 'E'};

  int count = 0;

  for(int i = 0; i < str.length; i++){
    if(vowels.contains(str[i])){
      count++;
    }
  }

  return count;
}
//----------------------------------------------------------------------------------------------------
//Check Even or Odd
bool isEven(int number){
    if(number % 2 == 0){
    return true;
  }else{
    return false;
  }
}
//----------------------------------------------------------------------------------------------------
//Find the Maximum of Three Numbers
int maxOfThree(int number1, int number2, int number3){
  int largetNumber = 0;

  if(number1 > number2 && number1 > number3){
    largetNumber = number1;
  }else if(number2 > number1 && number2 > number3){
    largetNumber = number2;
  }else{
    largetNumber = number3;
  }

  return largetNumber;
}
//----------------------------------------------------------------------------------------------------
//Convert Celsius to Fahrenheit 
void celsiusToFahrenheitConvertor(double celsius){
  double fahrenheit = ((9/5) * celsius) + 32;
 
  print('$celsius celsius is equal to $fahrenheit fahrenheit.');
}