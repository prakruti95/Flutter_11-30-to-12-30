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
void main()
{
  //var a = A();
  var b = B();

  b.a1();
  b.b1();

}