import 'package:flutter/material.dart';

class TutorialTabPage extends StatelessWidget {
  const TutorialTabPage({ super.key});


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
		      	mainAxisAlignment:MainAxisAlignment.center,
		      	
		      	children: [

		      		Padding(

					      	padding: const EdgeInsets.only(top: 30.0, left: 80.0),

				      		child: ElevatedButton(
										onPressed:() {
											Navigator.pushNamed(context, '/firstpage');
											},
										style: ElevatedButton.styleFrom(
				    					backgroundColor: Colors.blue,
										), //style
										child: Text(
											"Scaffolds",
											style: TextStyle(
												fontWeight: FontWeight.bold,
							        			fontSize: 30,
												color: Colors.white,
												),
											),
										), // button

			        ), // paddding

		      		

			        Padding(

				      	padding: const EdgeInsets.only(top: 30.0, left: 80.0),

				      		child: ElevatedButton(
								onPressed:() {
									Navigator.pushNamed(context, '/counterpage');
									},
								style: ElevatedButton.styleFrom(
		    					backgroundColor: Colors.blue,
								), //style
								child: Text(
									"Counter App",
									style: TextStyle(
										fontWeight: FontWeight.bold,
					        			fontSize: 30,
										color: Colors.white,
										),
									),
								), // button

			        ), // paddding


			        Padding(

				      	padding: const EdgeInsets.only(top: 30.0, left: 80.0),

				      		child: ElevatedButton(
								onPressed:() {
									Navigator.pushNamed(context, '/todopage');
									},
								style: ElevatedButton.styleFrom(
		    					backgroundColor: Colors.blue,
								), //style
								child: Text(
									"To Do App",
									style: TextStyle(
										fontWeight: FontWeight.bold,
					        			fontSize: 30,
										color: Colors.white,
										),
									),
								), // button

			        ), // paddding


			        Padding(

				      	padding: const EdgeInsets.only(top: 30.0, left: 80.0),

				      		child: ElevatedButton(
								onPressed:() {
									Navigator.pushNamed(context, '/ecommerce');
									},
								style: ElevatedButton.styleFrom(
		    					backgroundColor: Colors.blue,
								), //style
								child: Text(
									"E-commerce App",
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
