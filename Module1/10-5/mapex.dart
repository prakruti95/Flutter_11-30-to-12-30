import 'dart:ffi';

void main()
{
    Map<String,int> map = Map();

    //map.putIfAbsent(101, () => "a");
    map.putIfAbsent("b", () => 102);
   // map.putIfAbsent(103, () => "c");

    for(var data in map.values)
    {
        print(data);
    }
}