class Student
{
  var id;
  var name;

  Student(var i,var n)
  {
      id = i;
      name = n;
  }
}

void main()
{
    Student s = Student(101,"prakruti");//object//parameters

    //print values
    print("Your Id is ${s.id}");
    print("Your Name is ${s.name}");
}