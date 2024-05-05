import 'package:flutter/material.dart';
import 'package:first_app/e_commerce/e_utils/shirt_tile.dart';
import 'package:first_app/e_commerce/models/shirt.dart';
import 'package:first_app/e_commerce/models/cart.dart';
import 'package:provider/provider.dart';
import 'package:first_app/e_commerce/e_utils/cart_item.dart';

class CartPage extends StatelessWidget {
	const CartPage({super.key});

	

	@override
	Widget build(BuildContext context) {
		return Consumer<Cart>(
			builder: (context, value, child) => Scaffold(
				backgroundColor: Colors.pink[50],
				appBar: AppBar(
				iconTheme: IconThemeData(color: Colors.white),
				centerTitle: true,
				title: Text(
					'Cart',
					style: TextStyle(
						color: Colors.white,
						), //textstyle
					),
				backgroundColor: Colors.pink[200],
				), //appbar

				//const SizedBOx(height: 20),


				body: Padding(
					padding: const EdgeInsets.symmetric(horizontal: 25.0),

					

					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
						Center(
						child: const Text('My Cart',
							style: TextStyle(
								fontWeight: FontWeight.bold,
								fontSize: 24
								), //textstyle
							), //text
						), //center
						const SizedBox(height: 20),

						Expanded(
							child: ListView.builder(
								itemCount: value.getUserCart().length,
								itemBuilder: (contex, index) {
								Shirt individualShirt = value.getUserCart()[index];

								return CartItem(shirt: individualShirt);
								},
								), //listview.builder
							)

					], //children
					), //column
					), //padding
				), //scaffold
			); //consumer
	}
}