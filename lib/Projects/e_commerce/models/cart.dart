import 'shirt.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{

	List<Shirt> shirtShop = [

		Shirt(
			name: 'Sweatshirt_1',
			price: '222',
			description: 'An okay shirt',
			imagePath: 'lib/images/c5.jpg'
			),
		Shirt(
			name: 'Sweatshirt_2',
			price: '444',
			description: 'A good shirt',
			imagePath: 'lib/images/c2.jpg'
			),
		Shirt(
			name: 'Sweatshirt_3',
			price: '666',
			description: 'A nice shirt',
			imagePath: 'lib/images/c3.jpg'
			),
		Shirt(
			name: 'Sweatshirt_4',
			price: '888',
			description: 'A cool shirt',
			imagePath: 'lib/images/c4.jpg'
			),

	];

	List<Shirt> userCart = [];


	//lisst of soe for sale

	List<Shirt> getShirtList() {
		return shirtShop;
	}

	//get cart
	List<Shirt> getUserCart() {
		return userCart;
	}


	void addItemToCart(Shirt shirt) {
		userCart.add(shirt);
		notifyListeners();

	}

	void removeItemFromCart(Shirt shirt) {
		userCart.remove(shirt);
		notifyListeners();
	}


}