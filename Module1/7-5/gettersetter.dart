void main() {

  var student = Student();

  student.name = "Peter";   //set
  print(student.name);       //get

  student.percent = 438.0;  //set
  print(student.percent);    //get
}

class Student
{

  String _name="";        // Instance Variable with default Getter and Setter
  double _percent=0.00;

  set name(String value) {
    _name = value;
  }

  String get name => _name;

  set percent(double value) {
    _percent = value;
  }

  double get percent => _percent;



  // Private Instance Variable for its own library

  // // Instance variable with Custom Setter
  // void set percentage(double marksSecured) => _percent = (marksSecured / 500) * 100;
  // // Instance variable with Custom Getter
  // double get percentage => _percent!;




}