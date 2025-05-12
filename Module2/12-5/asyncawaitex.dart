import 'dart:async';
import 'dart:io';

void main()
{
  print("hello");
  Timer(Duration(seconds:10),()=>{  print("world2") });
  print("world");
}