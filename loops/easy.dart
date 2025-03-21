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
//printing from 1 to 100
void printNumber(){
  for(int i = 1; i <= 100; i++){
    print(i);
  }
}