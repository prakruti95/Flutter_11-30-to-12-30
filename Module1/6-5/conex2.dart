class Emp
{
    var name;
    var surname;
    var email;

    //parameterized Con ex
    Emp(var n,var s,var e)
    {
        name = n;
        surname = s;
        email = e;
    }
    display()
    {
      print("Your Name is $name, Your Surname is $surname, Your Email is $email");
    }
}
void main()
{
    Emp e1 = Emp("a","a1","a@gmail.com");
    Emp e2 = Emp("b","b1","b@gmail.com");
    Emp e3 = Emp("c","c1","c@gmail.com");

    e1.display();
    e2.display();
    e3.display();

    // print("Your Name is ${e1.name}, Your Surname is ${e1.surname}, Your Email is ${e1.email}");
    // print("Your Name is ${e2.name}, Your Surname is ${e2.surname}, Your Email is ${e2.email}");
    // print("Your Name is ${e3.name}, Your Surname is ${e3.surname}, Your Email is ${e3.email}");

}