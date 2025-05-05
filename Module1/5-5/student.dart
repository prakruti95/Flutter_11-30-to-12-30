class Student
{
  var id;
  var name;
}

void main()
{
    Student s = Student();//object

    //assigning value to object
    s.id = 101;
    s.name = "prakruti";

    //print values
    print("Your Id is ${s.id}");
    print("Your Name is ${s.name}");
}