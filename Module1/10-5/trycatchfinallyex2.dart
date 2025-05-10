getage(int age)
{
    if(age>=18)
    {
      print("eligible to vote");
    }
    else
    {
        try
        {
          throw Exception();
        }
        catch(e)
        {
          print(e);
        }
        finally
        {
          print("test123");
        }


    }
}
void main()
{
  getage(15);
}