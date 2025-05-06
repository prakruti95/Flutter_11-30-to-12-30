class Student2
{
  static var count =0;//static variable

  //default constructor
  Student2()
  {

      count++;
      print(count);
  }
}
void main()
{
    Student2 s1 = Student2();
    Student2 s2 = Student2();
    Student2 s3 = Student2();
}