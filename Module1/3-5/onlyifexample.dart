import 'dart:io';

void main()
{
  print("Enter Your Email");
  String email = stdin.readLineSync().toString();

  print("Enter Your Password");
  String pass = stdin.readLineSync().toString();

  if(email.isEmpty)
  {
    print("Please Enter Your Email ");
  }
  if(pass.isEmpty)
  {
    print("Please Enter Your password");
  }

  // if(email.isEmpty && pass.isEmpty)
  // {
  //   print("Please Enter Your Email ");
  //   print("Please Enter Your password");
  // }

}