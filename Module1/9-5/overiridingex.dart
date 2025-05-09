class RBI
{
    int rate()
    {
      return 0;
    }
}
class Sbi extends RBI
{
  int rate()
  {
    return 7;
  }
}
class Icici extends RBI
{
  int rate()
  {
    return 8;
  }
}
class Axis extends RBI
{
  int rate()
  {
    return 9;
  }
}

void main()
{
    var r = RBI();

    r = Sbi();//initialize

    print(r.rate());//7
    //print(r.rate());
    //print(r.rate());

    r = Icici();
    print(r.rate());//8

    r = Axis();
    print(r.rate());//9
}