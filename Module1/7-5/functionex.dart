//with para with return type
int cal(int a,int b)
{
  return a+b;
}
//without para with return
int cal2()
{
    var a = 6;
    var b = 5;
    var c=a+b;

    return c;
}
//without return with para
cal3(int a,int b)
{

  var c=a+b;
  print(c);

}
//without return without para
cal4()
{
  var a = 6;
  var b = 5;
  var c=a+b;
  print(c);

}
void main()
{
  print(cal(6, 5));
  print(cal2());
  cal3(6, 5);
  cal4();
}