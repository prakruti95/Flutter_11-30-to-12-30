class MyColor
{
    var color = "black";
}
class MyColor2 extends MyColor
{
    var color = "white";

    display()
    {
      //print(color);
      print(super.color);
    }
}
void main()
{

    var m2 = MyColor2();
    m2.display();

}