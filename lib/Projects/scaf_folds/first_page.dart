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
    			'First Page',
          style: TextStyle(
            color: Colors.white,
            ), //TextStyle
    			), // text
    		), // appbar

    	drawer: Drawer(
    		backgroundColor: Colors.white,
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
    				leading: Icon(Icons.home),
    				title: Text("H O M E",
    					style: TextStyle(
    						color: Colors.blue,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/firstpage');
    					},
    				), //listile
    			ListTile(
    				leading: Icon(Icons.home),
    				title: Text("F I R S T - P A G E",
    					style: TextStyle(
    						color: Colors.blue,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/counterpage');
    					},
    				), //listile
    			ListTile(
    				leading: Icon(Icons.book),
    				title: Text("S E C O N D - P A G E",
    					style: TextStyle(
    						color: Colors.blue,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/secondpage');
    					},
    				), //listile

    			ListTile(
    				leading: Icon(Icons.book),
    				title: Text("C O U N T E R - P A G E",
    					style: TextStyle(
    						color: Colors.blue,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/counterpage');
    					},
    				), //listile

          ListTile(
            leading: Icon(Icons.book),
            title: Text("T o - D O - P A G E",
              style: TextStyle(
                color: Colors.blue,
                ), // styletext
              ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/todopage');
              },
            ), //listile

          ListTile(
            leading: Icon(Icons.book),
            title: Text("E-C O M M E R C E - P A G E",
              style: TextStyle(
                color: Colors.blue,
                ), // styletext
              ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/ecommerce');
              },
            ), //listile


    			], // children
    			)// column
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