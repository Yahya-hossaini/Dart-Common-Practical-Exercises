//----------------------------------------------------------------------------------------------------
//Password Strength Checker
bool isStrongPassword(String password) {
  //Check if the password is at least 8 characters long
  if (password.length < 8) {
    return false;
  }

  //Regular expressions to check for at least one uppercase, one lowercase, and one number
  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasNumber = password.contains(RegExp(r'\d'));

  //Return true only if all conditions are met
  return hasUppercase && hasLowercase && hasNumber;
}
//----------------------------------------------------------------------------------------------------
//Electricity Bill Calculator
void calculateElectricityBill(int units) {
  double totalBill = 0.0;

  if (units <= 100) {
    totalBill = units * 0.50; //$0.50 per unit for up to 100 units
  } else if (units <= 200) {
    totalBill = (100 * 0.50) + ((units - 100) * 0.75); //$0.75 per unit for 101-200 units
  } else if (units <= 500) {
    totalBill = (100 * 0.50) + (100 * 0.75) + ((units - 200) * 1.20); //$1.20 per unit for 201-500 units
  } else {
    totalBill = (100 * 0.50) + (100 * 0.75) + (300 * 1.20) + ((units - 500) * 1.50); //$1.50 per unit above 500
  }

  print("The total electricity bill for $units units is \$${totalBill.toStringAsFixed(2)}.");
}

//----------------------------------------------------------------------------------------------------
//Body Mass Index (BMI) Calculator
void calculateBMI(double weight, double height){
  double BMI = (weight / (height * height));

  if(BMI < 18.5){
    print('Underweight BMI: $BMI');
  }else if(BMI >= 18.5 && BMI < 25){
    print('Normal weight BMI: $BMI');
  }else if(BMI >= 25 && BMI < 30){
    print('Overweight BMI: $BMI');
  }else if(BMI >= 30){
    print('Obese BMI: $BMI');
  }
}