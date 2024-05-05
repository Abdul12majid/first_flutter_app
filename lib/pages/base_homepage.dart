import 'package:flutter/material.dart';

class BaseHomePage extends StatelessWidget {
  const BaseHomePage({ super.key});


  @override
  Widget build(BuildContext context){

  	return Scaffold(
  		backgroundColor: Colors.blue[200],
  		body: Padding(
  				padding: const EdgeInsets.all(100.0),
  				child: Column(
  				//mainAxisAlignment: MainAxisAlignment.center,
	  			children: [
	  				Text(
		  			'Welcome to your very first flutter tutorial!',
		  			style: TextStyle(
		  					color: Colors.white,
		  					fontSize: 40,
		  					fontWeight: FontWeight.bold,
		  				), //textstyle
		  			), //text
	  			
	  			], //children
  			), //column
  			), //padding

  		); //scaffold


  }
}