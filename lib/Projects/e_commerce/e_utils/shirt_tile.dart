import 'package:flutter/material.dart';
import '../models/shirt.dart';



class ShirtTile extends StatelessWidget {
  Shirt shirt;
  void Function()? onTap;
  ShirtTile({super.key, required this.shirt, required this.onTap,});


  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        ), //decoration
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shirt.imagePath),
          ), //cliprrect


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:Text(
          shirt.description,
          style: TextStyle(color: Colors.grey[600]),
          ), //text
          ), //padding

        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shirt.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ), //textstyle
                    ),  

                  const SizedBox(height: 5),

                  Text(
                    '\$' + shirt.price,
                    style: const TextStyle(
                      
                      color: Colors.grey,
                      ), //textstyle
                    ), //text
                ], //children
                ), //column


              GestureDetector(
                onTap: onTap,
                child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                    ), //radius
                  ), //boxdecoration
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  ), //icon

                ), //Container
                ), //GestureDetector


            ], //children
            ), //row
          ), //padding


        ], //children

        ), //column
      ); //container

  }
}