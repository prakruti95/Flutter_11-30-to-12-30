import 'dart:collection';
import 'dart:ffi';

void main()
{
    // Set<String> set = Set();
    //
    //
    //
    // set.add("raj");
    // set.add("smit");
    // set.add("vivek");
    // set.add("harsh");
    // set.add("bhargav");
    //
    // for(var i in set)
    // {
    //     print(i);
    // }

    HashSet<String> set = HashSet();



    set.add("raj");
    set.add("smit");
    set.add("vivek");
    set.add("harsh");
    set.add("bhargav");

    for(var i in set)
    {
        print(i);
    }
}