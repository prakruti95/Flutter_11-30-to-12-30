class Student
{
  var name;
  var surname;
  var email;

  Student({var n,var s,var e})
  {
    name=n;
    surname=s;
    email=e;
  }

  display()
  {
    if(name!=null)
    {
      print("Your Name is $name");
    }
    if(surname!=null)
    {
      print("Your Surname is $surname");
    }
    if(email!=null)
    {
      print("Your Email is $email");
    }



  }

}

void main()
{
    var s1 = Student(e:"a@gmail.com",n:"a");
    s1.display();
}