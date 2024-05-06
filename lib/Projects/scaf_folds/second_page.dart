import 'package:flutter/material.dart';
import 'first_page.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({ super.key});


  @override
  Widget build(BuildContext context){


    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.blue,
        title: Text( 
          'Second Page',
          style: TextStyle(color: Colors.white), //style
          ), // text
        ), // appbar
      bottomNavigationBar: BottomNavigationBar(
        items: [

          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ), //BottomNavigationItem

          //SecondPage
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'SecondPage',
            
            ), //BottomNavigationItem

        ]
        ), //buttomNavigation
      body: Center(
        child: ElevatedButton(

          child: Text('Go to first page'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(),
                ), //material
              ); // nav push
          },
          ), //elebutton
        ) //center
      ); // Scaffold
  }
}  
