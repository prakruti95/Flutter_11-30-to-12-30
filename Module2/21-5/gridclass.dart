import 'package:flutter/material.dart';

class GridClass extends StatelessWidget
{


  List textitems =
  [
      "100",
      "200",
      "100",
      "200"

  ];
  List imgitems =
  [
      "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
      "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
    "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
    "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: GridView.builder
        (
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        padding: EdgeInsets.all(8.0),
        // padding around the grid
        itemCount: textitems.length, // total number of items
        itemBuilder: (context, index)
        {
          return Container(
            color: Colors.blue, // color of grid items
            child: Center(
              child: Column
                (
                  children:
                  [
                      Image.network(imgitems[index]),
                      Text(textitems[index],style: TextStyle(fontSize: 18.0, color: Colors.white)),
                  ],
                // items[index],
                // style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          );
        },
      ));
  }
}
