import 'package:flutter/material.dart';
import 'package:miniproex/dashboard.dart';
import 'package:http/http.dart' as http;

class ProductAddScreen extends StatefulWidget
{
  const ProductAddScreen({super.key});

  @override
  State<ProductAddScreen> createState() => _ProductAddScreenState();
}

class _ProductAddScreenState extends State<ProductAddScreen>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();
  TextEditingController pdes = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Add Product"),),
      body: Center
        (
        child: Column
          (
          children:
          [
            TextField(decoration: InputDecoration(hintText: "Enter Product Name"),controller: pname,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Product Price"),controller: pprice,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Product Description"),controller: pdes,),
            SizedBox(height: 10,),
            ElevatedButton(

                onPressed: ()
                {
                  String pn = pname.text.toString();
                  String pp = pprice.text.toString();
                  String pd = pdes.text.toString();
                  addproduct(pn,pp,pd);
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));

                }, child:Text("Add")),



          ],
        ),
      ),
    );
  }

  addproduct(String pn,String pp,String pd)async
  {
    var url = "https://prakrutitech.buzz/Fluttertestapi/productinsert.php";
    var resp = await http.post(Uri.parse(url),body:
    {
      "product_name" : pn,
      "product_price": pp,
      "product_description": pd
    });
    print(resp.toString());
  }
}

