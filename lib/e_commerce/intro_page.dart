import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
	const IntroPage({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			body: Center(
				child:Padding(
					padding: const EdgeInsets.symmetric(horizontal: 25.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
					children: [
						//logo
						Padding(
							padding: const EdgeInsets.all(25.0),
							child: Image.asset(
								'lib/images/l1.jpg',
								//color: Colors.white,
								height:240,
								//width: 200,
							), //imageasset
						), //padding

					const SizedBox(height: 48),

					//title

					const Text(
						'Just do it',
						style: TextStyle(
							fontWeight: FontWeight.bold,
							fontSize: 20,
							color: Colors.white,
							), //TextStyle
						), //text
					const SizedBox(height: 24),

					// sub title

					const Text(
						'Clothes aren\'t just what we wear, they\'re a language we speak without words',
						style: TextStyle(
							color: Colors.grey,
							fontWeight: FontWeight.bold,
							fontSize: 20,
							), //TextStyle
						textAlign: TextAlign.center,
						), //text

					const SizedBox(height: 48),


					GestureDetector(
						onTap: () {
							Navigator.pushNamed(context, '/e_homepage');
							},
					child: Container(
						decoration: BoxDecoration(
							color: Colors.pink[200],
							borderRadius: BorderRadius.circular(12),
							), //BoxDecoration
						padding: const EdgeInsets.all(25),
						child: const Center(
							child: Text(
							'Shop now',
							style: TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.bold,
								), //TextStyle
							), //text
							), //center
						), // container
					), // GestureDetector



					], //children
				),// column
			), //center
			), //padding
		); //scafold
	}
}