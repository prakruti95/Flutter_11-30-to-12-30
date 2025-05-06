class Student
{
  //variables
  var id;
  var name;

  //constructor
  Student()
  {
    print("Hello");
  }
}
void main()
{
    Student s1 = Student();
    var s2 = Student();
    Student s3 = new Student();

    s1.id=101;
    s1.name="smit";

    s2.id=102;
    s2.name="Raj";

    s3.id=103;
    s3.name="Prakruti";

    print("${s1.id} and ${s1.name} , ${s2.id} and ${s2.name} and ${s3.id} and ${s3.name}");


}