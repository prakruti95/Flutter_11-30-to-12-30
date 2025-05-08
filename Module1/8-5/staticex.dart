class Emp
{
  var id;
  var name;
  static var company="XYZ";//static variable

  Emp(var id,var name)
  {
      this.id = id;
      this.name = name;
  }

  display()
  {
    print("Your id is $id");
    print("Your name is $name");
    print("Your company is $company");
  }

  static change()
  {
    company = "ABC";
  }
}
void main()
{
  var e1 = Emp(101,"smit");
  var e2 = Emp(102,"Raj");

  Emp.change();
  e1.display();
  e2.display();
}