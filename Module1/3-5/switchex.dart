import 'dart:io';

void main()
{
  print("Enter Any number");
  int num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1: print("Your Selected Language is English");

    case 2: print("Your Selected Language is Hindi");

    case 3: print("Your Selected Language is Gujarati");

    default:print("Number is not valid");
  }
}