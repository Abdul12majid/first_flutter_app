import 'package:flutter/material.dart';

class BaseHomePage extends StatelessWidget {
  const BaseHomePage({ super.key});


  @override
  Widget build(BuildContext context){

  	return Scaffold(
		  body: Stack(
		    children: [
		      // Background image layer
		      Image.asset(
		        'lib/images/bg.jpeg',
		        fit: BoxFit.cover,
		        width: double.infinity, // Ensures image fills the width
		        height: double.infinity, // Ensures image fills the height
		      ),

		      // Content layer positioned on top of the background

		      Padding(
		      	padding: const EdgeInsets.all(0.0),
		      	child: Column(
		      	//mainAxisAlignment:MainAxisAlignment.center,
		      	
		      	children: [

		      		Padding(
						padding: const EdgeInsets.only(top: 50.0, left: 50.0),
						child: Image.asset(
							'lib/images/logo2.jpg',
							//color: Colors.white,
							height:240,
							//width: 200,
						), //imageasset
					), //padding

		      		Padding(

			      	padding: const EdgeInsets.only(top: 30.0, left: 50.0),

		      		child: Text(
			        	'Welcome',

			        	style: TextStyle(
			        	fontWeight: FontWeight.bold,
			        	fontSize: 50,
			        	color: Colors.white,
			        	), //TextStyle
			        ), // text

			        ), // paddding

			        Padding(

			      	padding: const EdgeInsets.only(top: 30.0, left: 50.0),

		      		child: Text(
			        	'To your first Flutter Project !!!',

			        	style: TextStyle(
			        	fontWeight: FontWeight.bold,
			        	fontSize: 30,
			        	color: Colors.white,
			        	), //TextStyle
			        ), // text

			        ), // paddding

			        const SizedBox(height: 88),


			        Padding(

			      	padding: const EdgeInsets.only(top: 30.0, left: 50.0),

		      		child: ElevatedButton(
						onPressed:() {
							Navigator.pushNamed(context, '/tutorial_tab');
							},
						style: ElevatedButton.styleFrom(
    					backgroundColor: Colors.blue,
						), //style
						child: Text(
							"Start",
							style: TextStyle(
								fontWeight: FontWeight.bold,
			        			fontSize: 30,
								color: Colors.white,
								),
							),
						), // button

			        ), // paddding

			        ],
			      
		      	), //column

			), //padding,


		      

		    ],
		  ), //stack
		); //scaffold
  	


  }
}
