class A
{
    var a = 1;
}
class B extends A
{
  var a = 2;

  display()
  {
    print(a);
    print(super.a);
  }
  display2()
  {

  }

}
class C extends B
{
  var a = 3;
  display()
  {
    print(a);

    var b = B();
    b.display();
    //print(super.);
  }
}