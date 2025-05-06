import 'dart:io';
//
class Cal
{
    var PI=3.14;
    var AT = 0.5;
    var ans;
    Cal([var rad,var a,var b])
    {
        if(rad!=0)
        {
            ans = PI*rad*rad;
        }
        else if(a!=0 && b!=0)
        {
            ans = AT*a*b;
        }

        print("Answer is $ans");


    }
}
void main()
{

    print("select any one for area of circle press 1, for area of trin press 2");
   var num = int.parse(stdin.readLineSync().toString());

    switch(num)
    {
        case 1:
            print("\n Enter Radius");
            var r = int.parse(stdin.readLineSync().toString());
            Cal c1 = Cal(r);

        case 2:

            print("\n Enter Value for a");
            var a = int.parse(stdin.readLineSync().toString());

            print("\n Enter Valeu for b");
            var b = int.parse(stdin.readLineSync().toString());

            Cal c1 = Cal(a,b);
    }


}