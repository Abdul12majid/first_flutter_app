import 'package:flutter/material.dart';
import 'e_utils/shirt_tile.dart';
import 'models/shirt.dart';
import 'models/cart.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
	const HomePage({super.key});

	

	@override
	State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{

	void addShirtToCart(Shirt shirt) {
		Provider.of<Cart>(context, listen: false).addItemToCart(shirt);

		showDialog(
			context: context,
			builder: (context) => AlertDialog(
				title: Text('successfully added'),
				content: Text('check cart'),
				),
			);
	}

	@override
	Widget build(BuildContext context){
		return Consumer<Cart>(
			builder: (context, value, child) => Scaffold(
			backgroundColor: Colors.pink[50],
			appBar: AppBar(
				iconTheme: IconThemeData(color: Colors.white),
				centerTitle: true,
				title: Text(
					'Shop',
					style: TextStyle(
						color: Colors.white,
						), //textstyle
					),
				backgroundColor: Colors.pink[300],
				), //appbar
			drawer: Drawer(
    		backgroundColor: Colors.pink[50],
    		child: Padding(
    			padding: EdgeInsets.only(left: 25.0),
    			child: Column(

    			children: [

    			DrawerHeader(
    				child: Icon(
    					Icons.shopping_bag_rounded,
    					color: Colors.pink[200],
    					size:48
    					),//icon
    				), //DrawerHeader

    			Padding(
    				padding: EdgeInsets.only(left: 25.0),
    			child: ListTile(
    				leading: Icon(Icons.home, color: Colors.pink),
    				title: Text("H O M E",
    					style: TextStyle(
    						color: Colors.pink,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/ecommerce');
    					},
    				), //listile
    			), //padding

    			
    			Padding(
    				padding: EdgeInsets.only(left: 25.0),
    			child: ListTile(
    				leading: Icon(Icons.shopping_bag_rounded, color: Colors.pink),
    				title: Text("C A R T",
    					style: TextStyle(
    						color: Colors.pink,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/cartpage');
    					},
    				), //listile
    			), //padding
    			const Spacer(),

    			Padding(
    				padding: EdgeInsets.only(left: 25.0),
    			child: ListTile(
    				leading: Icon(Icons.shopping_bag_rounded, color: Colors.pink),
    				title: Text("H O M E",
    					style: TextStyle(
    						color: Colors.pink,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/b_homepage');
    					},
    				), //listile
    			), //padding

    			Padding(
    				padding: EdgeInsets.only(left: 25.0),
    			child: ListTile(
    				leading: Icon(Icons.shopping_bag_rounded, color: Colors.pink),
    				title: Text("T U T O R I A L S",
    					style: TextStyle(
    						color: Colors.pink,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/tutorial_tab');
    					},
    				), //listile
    			), //padding

    			], // children
    			)// column
    			), //padding
    		), //drawer

    		body: Padding(

    			padding: const EdgeInsets.symmetric(vertical: 25.0),
    			child: Column(
    			children: [
    				Container(
    					padding: const EdgeInsets.all(12),
    					margin: const EdgeInsets.symmetric(horizontal: 25),
    					decoration: BoxDecoration(
    						color: Colors.pink[100],
    						borderRadius: BorderRadius.circular(8)
    						), //boxdecoration
    					child: Row(
    						mainAxisAlignment: MainAxisAlignment.spaceBetween,
    						children: [
    							Text(
    								'Search', 
    								style: TextStyle(
    									color: Colors.white,
    									fontWeight: FontWeight.bold,
    									), //textstyle
    								), //text
    							Icon(Icons.search, color:Colors.white),
    						],
    						), //row
    					), //container
    				Padding(
    					padding: const EdgeInsets.symmetric(vertical: 22.0),
    					child: Text('Everyone Rocks, Some Just More Than Others.'),
    				), //padding

    				Padding(
    					padding: const EdgeInsets.symmetric(horizontal: 25.0),
    					child: Row(
    						mainAxisAlignment: MainAxisAlignment.spaceBetween,
    						crossAxisAlignment: CrossAxisAlignment.end,
    						children: const [
    							Text(
    								'Hot Picks ',
    								style: TextStyle(
    									fontWeight: FontWeight.bold,
    									fontSize: 24,
    									), //textstyle
    								), //text
    							Text(
    								'see all',
    								style: TextStyle(
    									fontWeight: FontWeight.bold,
    									color: Colors.blue
    									), //textstyle
    								), //text


    						], //children
    						), //row
    					), //padding

    				const SizedBox(height:30),

    				Expanded(

    					child: ListView.builder(
    						itemCount: 4,
    						scrollDirection: Axis.horizontal,
	    					itemBuilder: (context, index) {
	    						Shirt shirt = value.getShirtList()[index];
	    						return ShirtTile(
	    							shirt: shirt,
	    							onTap: () => addShirtToCart(shirt),
	    							); //shirttile
	    						},
	    					), //ListViewbuilder
    				),// expanded

    				const Padding(
    					padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
    					child: Divider(
    						color: Colors.white
    						), //divider
    					), //padding

    			], //children
    			), //column
    		), //padding


		) //Scaffold
	); //consumer
	}
}