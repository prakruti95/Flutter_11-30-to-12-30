import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sliderandgridex/main.dart';
import 'package:sliderandgridex/sliderpage.dart';

class Common extends StatelessWidget
{
  const Common({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("Common"),),
        body: Center
          (
            child:Column
              (
                children:
                [
                ListView
                (
                children:
                [
                  CarouselSlider(
                  items: [

            //1st Image of Slider
            Container(
            margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //2nd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80"),
              fit: BoxFit.cover,
            ),
          ),
        ),


        ],

    //Slider Container properties
    options: CarouselOptions(
    height: 320.0,
    //enlargeCenterPage: true,
    autoPlay: true,
    aspectRatio: 16 / 9,
    autoPlayCurve: Curves.easeInOut,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    //viewportFraction: 0.8,
    ),
    ),
    ],
    )

                ],
              )


          ),
      );
  }
}
