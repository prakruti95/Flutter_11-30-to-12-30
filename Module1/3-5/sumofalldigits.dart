import 'dart:io';

void main()
{
  print("Enter Your Number");
  int num = int.parse(stdin.readLineSync().toString());

  int sum=0;
  while(num>0)
  {
    int rem = num % 10;//4//3//2//1
    sum+=rem;//sum=sum+rem//0+4=4+3=7+2=9+1=10
    num = num ~/ 10;//123//12//1//0.5
  }
  print("sum of all digits: $sum");

}