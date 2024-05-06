import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
	const CounterPage({ super.key });

	@override
	State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

	int _counter = 0;

	void _incrementCounter(){
		setState(() {
			_counter++;
		});
	}


@override
Widget build(BuildContext context) {

	return Scaffold(

		appBar: AppBar(
				iconTheme: IconThemeData(color: Colors.white),
				centerTitle: true,	
				backgroundColor: Colors.blue[300],

				title: Text('Counter App',
					style: TextStyle(
						color: Colors.white,
						),),
				elevation: 5,
				), //appbar
		drawer: Drawer(
    		backgroundColor: Colors.blue[300],
    		child: Padding(
    			padding: EdgeInsets.only(left: 25.0),
    			child: Column(
    			children: [

    			DrawerHeader(
    				child: Icon(
    					Icons.book,
    					color: Colors.white,
    					size:48
    					),//icon
    				), //DrawerHeader

    			
    			ListTile(
    				leading: Icon(Icons.home, color: Colors.white),
    				title: Text("H O M E",
    					style: TextStyle(
    						color: Colors.white,
    						), // styletext
    					),
    				onTap: () {
    					Navigator.pop(context);
    					Navigator.pushNamed(context, '/b_homepage');
    					},
    				), //listile

    			ListTile(
    				leading: Icon(Icons.book, color: Colors.white),
    				title: Text("T U T O R I A L S",
    					style: TextStyle(
    						color: Colors.white,
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
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					Text("You pushed the button this many times: "),

					Text(
						_counter.toString(),
						style: TextStyle(
							fontSize: 40,
							), //style text
						), // text

					ElevatedButton(
						onPressed: _incrementCounter,
						
						child: Icon(Icons.add),
						), // button
				], //children
				), // columnn
			),// center
		);
}
}