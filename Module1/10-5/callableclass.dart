class Person
{
   call(int age, String name)
  {
    return "The name of the person is $name and age is $age";
  }
  // String call(int age, String name) {
  //   return "The name of the person is $name and age is $age";
  // }
}
void main()
{
  var personOne = Person();
 // personOne.tops(age, name)
  var msg = personOne(25, "Peter");
  print(msg);
}