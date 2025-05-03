import 'dart:io';

void main()
{

    print("Enter Your Age");
    int age = int.parse(stdin.readLineSync().toString());

    print("Enter Your Name");
    String name = stdin.readLineSync().toString();

    print("Your Age is $age");
    print("Your Name is $name");
}