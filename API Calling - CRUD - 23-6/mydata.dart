import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:miniproex/dashboard.dart';
import 'package:miniproex/update.dart';
class MyData extends StatelessWidget
{
  final List list ;
   MyData({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
          itemCount: list.length,
          itemBuilder:(context,index)
          {
            return Card
                (
                  //leading: Image.network(list[index]["url"]),
                  //title: Text(list[index]["product_name"]),
                  child: Column
                    (
                      children:
                      [

                        Text(list[index]["product_name"]),
                        Text(list[index]["product_price"]),
                        Text(list[index]["product_description"]),
                        SizedBox(height: 5,),
                        Row
                          (
                            children:
                            [
                                IconButton(onPressed: ()
                                {
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => UpdateScreen(id:list[index]["id"],pname:list[index]["product_name"],price:list[index]["product_price"],pdes:list[index]["product_description"])));


                                }, icon: Icon(Icons.edit)),
                                IconButton(onPressed: ()
                                {
                                        deleteproduct(list[index]["id"]);
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
                                }, icon: Icon(Icons.delete)),
                            ],
                          )

                      ],
                    ),
              );
          }

      );
  }

   deleteproduct(id)
   {
     http.post(Uri.parse("https://prakrutitech.buzz/Fluttertestapi/productdelete.php"),
         body:
         {
           "id" : id
         });
   }
}
