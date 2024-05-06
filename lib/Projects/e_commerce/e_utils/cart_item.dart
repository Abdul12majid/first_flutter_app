import 'package:flutter/material.dart';
import '../models/shirt.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartItem extends StatefulWidget {
	Shirt shirt;
	CartItem({
		super.key,
		required this.shirt,
		});
	

	@override
	State<CartItem> createState() => _CartItemState();

}

class _CartItemState extends State<CartItem>{

	//deleting from cart

	void removeItemFromCart(){
		Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shirt);


	}

	@override
	Widget build(BuildContext context) {

		return Container(
			decoration: BoxDecoration(
				color: Colors.grey[200],
				borderRadius: BorderRadius.circular(8),
				), //deoration
			margin: const EdgeInsets.only(bottom: 10),
			child:ListTile(
				leading: Image.asset(widget.shirt.imagePath),
				title: Text(widget.shirt.name),
				subtitle: Text(
							widget.shirt.price,
					), //text
				trailing: IconButton(
					icon: Icon(Icons.delete),
					onPressed: removeItemFromCart
					) // IconButton
				), //listtile

		); //container

	}
}