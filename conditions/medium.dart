//----------------------------------------------------------------------------------------------------
//ATM Withdrawal 
void withdrawATM(double amount){
  int currentAmount = 200;

  if(amount % 10 == 0){
    print('User withdrawed money');
  }else if(amount > currentAmount){
    print('Error: Insufficient Funds');
  }else{
    print('Error: you must enter a multiple of 10. eg: 70, 80, 90');
  }
}

//----------------------------------------------------------------------------------------------------
//Speeding Ticket Calculator
void speedTicketCalculator(int speed){
  int speedLimit = 60;
  int fine = 50;
  int doubleFine = 100;

  if(speed > speedLimit){
    if(speed > 100){
      print('The driver gets a double fine of \$${doubleFine}.');
    }else{
      print('The driver gets a fine of \$${fine}.');
    }
  }else{
    print('The driver is within the speed limit. No fine.');
  }
}
//----------------------------------------------------------------------------------------------------
//Triangle Validity
void validateTriangle(double side1, side2, side3){
  if(((side1 + side2) > side3) && ((side3 + side2) > side1) && ((side1 + side3) > side2)){
    print('Valide');
  }else{
    print('Invalide');
  }
}