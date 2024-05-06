import 'package:flutter/material.dart';
import 'package:first_app/projects/scaf_folds/first_page.dart';
import 'utils/todo_tile.dart';
import 'utils/dialog_box.dart';
import 'package:first_app/data/database.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:first_app/lib/main.dart';



class TodoPage extends StatefulWidget {
	const TodoPage({super.key});

	

	@override
	State<TodoPage> createState() => _TodoPageState();

}

class _TodoPageState extends State<TodoPage>{

	final _myBox = Hive.box('mybox');
	ToDoDataBase db = ToDoDataBase();

	@override
	void initState() {
		if (_myBox.get("TODOLIST") == null) {
			db.createInitialData();
		} else {
			db.loadData();
		}

		super.initState();
	}

	final _controller = TextEditingController();

	

	void checkBoxChanged(bool? value, int index){
		setState(() {
			db.toDoList[index][1] = !db.toDoList[index][1];
			});
		db.updateDataBase();


	}

	void saveNewTask(){

		setState(() {
			db.toDoList.add([ _controller.text, false]);
			_controller.clear();
			});
		Navigator.of(context).pop();
		db.updateDataBase();

	}

	void createNewTask() {
		showDialog(
			context: context,
			builder: (context) {
				return DialogBox(
					controller: _controller,
					onSave: saveNewTask,
					onCancel: () => Navigator.of(context).pop(),
					);
				},
			);
	}

	void deleteTask(int index) {
		setState(() {
			db.toDoList.removeAt(index);
			});
		db.updateDataBase();
	}



	@override
	Widget build(BuildContext context){
		return Scaffold(
			backgroundColor: Colors.white,

			appBar: AppBar(
				iconTheme: IconThemeData(color: Colors.white),
				centerTitle: true,	
				backgroundColor: Colors.purple[300],

				title: Text('To DO App',
					style: TextStyle(
					color: Colors.white,
				),),
				elevation: 5,
				), //appbar


			drawer: Drawer(
	    		backgroundColor: Colors.purple[300],
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

			floatingActionButton: FloatingActionButton(
				onPressed: createNewTask,
				child: Icon(Icons.add),
				),

			body: ListView.builder(
				itemCount: db.toDoList.length,
				itemBuilder: (context, index) {
					return ToDoTile(
						taskName: db.toDoList[index][0],
						taskCompleted: db.toDoList[index][1],
						onChanged: (value) => checkBoxChanged(value, index),
						deleteFunction: (context) => deleteTask(index),
						); // TodoTile
				}
				
				), //ListView

			); // scaffold
	}
}

