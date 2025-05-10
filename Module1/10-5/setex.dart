import 'dart:ffi';

void main()
{
    Set<int> set = Set();
    Set set2 = Set();


    set.add(10);
    set.add(20);
    set.add(30);
    set.add(40);
    set.add(50);
   // set.add("a");
    set.add(10);
    set.add(60);
    set2.add(70);
    set2.add(80);
    //set.addAll(set2);
    for(var i in set)
    {
        print(i);
    }
}