import 'package:flutter/material.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({ super.key});


  @override
  Widget build(BuildContext context){


    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text( 
          'Scaffold with Background Color',
          style: TextStyle(
            color: Colors.white,
            ), //TextStyle
          ), // text
        ), // appbar

             
      body: Center(
        child: ElevatedButton(
          child: Text('Go to second page'),
          onPressed: () {

            Navigator.pushNamed(context, '/secondpage');
          },
          ), //elebutton
        ) //center
      ); // Scaffold
  }
}  


