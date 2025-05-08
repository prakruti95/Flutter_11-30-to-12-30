//final
import 'dart:async';

class A
{

}

class B extends A
{
  b()
  {
    Timer(Duration(seconds: 30),()=>{});
  }

}
void main()
{
  final int speed = 90;
  //speed = 120;
  print(speed);
}