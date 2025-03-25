//----------------------------------------------------------------------------------------------------
//Find Unique Elements in an Array
List<int> findUnique(List<int> arr) {
  // Step 1: Count occurrences of each element using a Map
  Map<int, int> counts = {};
  for (int num in arr) {
    counts[num] = (counts[num] ?? 0) + 1; // Increment count, or initialize to 1
  }

  // Step 2: Filter elements that occur only once
  List<int> uniqueElements = [];
  for (int num in counts.keys) {
    if (counts[num] == 1) {
      uniqueElements.add(num);
    }
  }

  return uniqueElements;
}
//----------------------------------------------------------------------------------------------------
//Sorting an Array Using Bubble Sort
void bubbleSort(List<int> array){
  int len = array.length;
  bool swapped;

  //first loop is for handle each pass of iteration for algorithm.
  for(int i = 0; i < len; i++){
    swapped = false;
    //this loop will handle for comparison and swapping id needed.
    for(int j = 0; j < len -1; j++){
      if(array[j] > array[j + 1]){
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        swapped = true;
      }
    }
    //if no swaps were made, then the array is already sorted
    if(!swapped) break;
  }
}
//----------------------------------------------------------------------------------------------------
//Convert Decimal to Binary
String decimalToBinary(int number){
  if(number == 0){
    return '0';
  }

  String binary = '';
  while(number > 0){
    binary = (number % 2).toString() + binary;
    number = number ~/ 2;
  }

  return binary;
}

//----------------------------------------------------------------------------------------------------
//Binary Search Algorithm
int binarySearch(List<int> array, int target){
  int low = 0;
  int high = array.length - 1;

  while(low <= high){
    //calculating the middle
    int middle = low + ((high - low) ~/ 2);

    if(array[middle] == target){// return the middle if it was the target itself
      return middle;
    }else if(array[middle] < target){//go to right side
      low = middle + 1;
    }else{//go to left side
      high = middle - 1;
    }
  }

  return -1;
}
//----------------------------------------------------------------------------------------------------
//Generate Pascal’s Triangle
void pascalTriangle(int rows) {
  List<List<int>> triangle = [];

  for (int i = 0; i < rows; i++) {
    //start each row with 1
    List<int> row = [1]; 
    
    //calculating the middle numbers
    for (int j = 1; j < i; j++) {
      row.add(triangle[i - 1][j - 1] + triangle[i - 1][j]);
    }

    //add 1 at the end of the row 
    if (i > 0) row.add(1); 
    triangle.add(row);
  }

  //print the triangle as a pyramid
  for (int i = 0; i < triangle.length; i++) {

    //add spaces to center each row
    String spaces = ' ' * (rows - i - 1);
    print(spaces + triangle[i].join(' '));
  }
}

