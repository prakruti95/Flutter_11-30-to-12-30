import 'dart:ffi';

void main()
{
  //var list = List(5);
  //List list = List(5);
  //List<int> numbersList = List(5);


  var list = [10,20,30,40,50];
  var list2 = [60,70,10,20];

  // print(list[0]);
  // list[0]=100;
  // print("-----------------");
  // for(var data in list)
  //   {
  //     print(data);
  //   }

  // list.add(90);
  // list.add(900);
  //list.addAll(list2);
  //list.remove(900);
  //list.removeAt(1);

  list[1]=0;
  for(var data in list)
   {
      print(data);
   }



}