import 'package:flutter/material.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({ super.key});


  @override
  Widget build(BuildContext context){


    return Scaffold(
    	appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
    		backgroundColor: Colors.blue,
    		title: Text( 
    			'Blank Scaffold',
          style: TextStyle(
            color: Colors.white,
            ), //TextStyle
    			), // text
    		), // appbar

    	drawer: Drawer(
          backgroundColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
              children: [

              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size:48
                  ),//icon
                ), //DrawerHeader

              
              ListTile(
                leading: Icon(Icons.home, color: Colors.blue),
                title: Text("H O M E",
                  style: TextStyle(
                    color: Colors.blue,
                    ), // styletext
                  ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/b_homepage');
                  },
                ), //listile

              ListTile(
                leading: Icon(Icons.book, color: Colors.blue),
                title: Text("T U T O R I A L S",
                  style: TextStyle(
                    color: Colors.blue,
                    ), // styletext
                  ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/tutorial_tab');
                  },
                ), //listile

              
              ], // children
              )// column
            ), //padding
        ), //drawer

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


final myRouteBuilder = (context) => FirstPage();