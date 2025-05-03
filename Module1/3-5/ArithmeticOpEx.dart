import 'dart:io';

void main()
{

    print("Enter First Number");
    int a = int.parse(stdin.readLineSync().toString());

    print("Enter Second Number");
    int b = int.parse(stdin.readLineSync().toString());

    var add = a+b;
    var sub = a-b;
    var mul = a*b;
    var div = a/b;
    var modulus = a%b;//

    print(add);
    print(sub);
    print(mul);
    print(div);
    print(modulus);
}