class A
{
  a1()
  {
    print("a1 called");
  }
}
class B extends A
{
  b1()
  {
    print("b1 called");
  }
}
class C extends A
{
  c1()
  {
    print("c1 called");
  }
}
class D extends C implements B
{
  d1()
  {
    print("d1 called");
  }

  @override
  b1()
  {
    print("b1 called");
  }
}


void main()
{
  var d1 = D();
  d1.a1();
  d1.b1();
  d1.c1();
  d1.d1();
}