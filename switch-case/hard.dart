
//----------------------------------------------------------------------------------------------------
//Music Playlist Controller
void controlMusicPlaylist(String command) {
  switch (command) {
    case "Play":
      print("Music is now playing.");
      break;
    case "Pause":
      print("Music has been paused.");
      break;
    case "Next":
      print("Skipping to the next track.");
      break;
    case "Previous":
      print("Going back to the previous track.");
      break;
    default:
      print("Invalid command. Please use 'Play', 'Pause', 'Next', or 'Previous'.");
  }
}
//----------------------------------------------------------------------------------------------------
//Automated Toll Booth System
int calculateTollFee(String vehicleType) {
  int tollFee;

  switch (vehicleType) {
    case "Car":
      tollFee = 50;
      break;
    case "Truck":
      tollFee = 100;
      break;
    case "Bike":
      tollFee = 20;
      break;
    default:
      tollFee = 0;
  }

  return tollFee;
}
//----------------------------------------------------------------------------------------------------
//Discount System Based on Membership
void discountMembership(double amount, String MembershipType){
  String type = MembershipType.toLowerCase();
  double discount = 0.0;
  switch(type){
    case 'gold':
      discount = amount * 0.7;
      print('the amount you must pay is: $discount');
      break;
    case 'silver':
      discount = amount * 0.5;
      print('the amount you must pay is: $discount');
      break;
    case 'bronze':
      discount = amount * 0.2;
      print('the amount you must pay is: $discount');
      break;
    default:
     print('You have no right to have discount, the amount you must pay is: $amount');
  }
}
//----------------------------------------------------------------------------------------------------
//Zodiac Sign Finder
String zodiaxFinder(int month, int day){
  String zodiacSign;

  switch (month) {
    case 1:
      zodiacSign = (day <= 19) ? "Capricorn" : "Aquarius";
      break;
    case 2:
      zodiacSign = (day <= 18) ? "Aquarius" : "Pisces";
      break;
    case 3:
      zodiacSign = (day <= 20) ? "Pisces" : "Aries";
      break;
    case 4:
      zodiacSign = (day <= 19) ? "Aries" : "Taurus";
      break;
    case 5:
      zodiacSign = (day <= 20) ? "Taurus" : "Gemini";
      break;
    case 6:
      zodiacSign = (day <= 20) ? "Gemini" : "Cancer";
      break;
    case 7:
      zodiacSign = (day <= 22) ? "Cancer" : "Leo";
      break;
    case 8:
      zodiacSign = (day <= 22) ? "Leo" : "Virgo";
      break;
    case 9:
      zodiacSign = (day <= 22) ? "Virgo" : "Libra";
      break;
    case 10:
      zodiacSign = (day <= 22) ? "Libra" : "Scorpio";
      break;
    case 11:
      zodiacSign = (day <= 21) ? "Scorpio" : "Sagittarius";
      break;
    case 12:
      zodiacSign = (day <= 21) ? "Sagittarius" : "Capricorn";
      break;
    default:
      zodiacSign = "Invalid date";
  }
  return zodiacSign;
}
//----------------------------------------------------------------------------------------------------
//Roman Numeral Converter
void convertToRoman(int number){

  switch(number){
    case 1:
      print('I');
      break;
    case 2:
      print('II');
      break;
    case 3:
      print('III');
      break;
    case 4:
      print('IV');
      break;
    case 5:
      print('V');
      break;
    case 6:
      print('VI');
      break;
    case 7:
      print('VII');
      break;
    case 8:
      print('VIII');
      break;
    case 9:
      print('IX');
      break;
    case 10:
      print('X');
      break;
    default:
      print('Invalide number!');
  }
}