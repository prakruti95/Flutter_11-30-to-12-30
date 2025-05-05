printCountries(String name1, [String? name2, String? name3])
{

    print("Name 1 is $name1");
    print("Name 2 is $name2");
    print("Name 3 is $name3");
}

printCities(String name1, String name2, String name3)
{

     print("Name 1 is $name1");
     print("Name 2 is $name2");
     print("Name 3 is $name3");
}


void main()
{
    printCities("New York", "New Delhi", "Sydney");

    print("");

   printCountries("USA","USA2");  // You can skip the Optional Positional Parameters
}