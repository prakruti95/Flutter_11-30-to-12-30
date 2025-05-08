class P
{
    p()
    {
        print("p called");
    }
}
class Q extends P
{
  q()
  {
    print("q called");
  }
}
class R extends Q
{
  r()
  {
    print("r called");
  }
}
void main()
{
    var r = R();
    r.p();
    r.q();
    r.r();
}