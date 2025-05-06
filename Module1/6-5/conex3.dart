import 'dart:io';
//
// class Cal
// {
//
//
//     // Cal(var rad,var a,var b)
//     // {
//     //
//     // }
// }
void main()
{
    var PI = 3.14;
    var AT = 0.5;

    print("\n Choose 1 If you want to find area of circle \n Choose 2 If you want to find area of traingle");
    var num = int.parse(stdin.readLineSync().toString());


    switch(num)
    {
        case 1:
            print("\n Enter Radius");
            var r = int.parse(stdin.readLineSync().toString());
            var ans = PI*r*r;
            print("Area of circle is $ans");

        case 2:
            print("\n Enter Value for a");
            var a = int.parse(stdin.readLineSync().toString());

            print("\n Enter Valeu for b");
            var b = int.parse(stdin.readLineSync().toString());

            var ans = AT*a*b;
            print("Area of traingle is $ans");
    }

   //Cal c1 = Cal(rad, a, b);

}