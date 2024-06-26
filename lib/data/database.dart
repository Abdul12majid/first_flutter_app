import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

	List toDoList = [];


	final _myBox = Hive.box('mybox');

	void createInitialData() {
		toDoList = [
			['Finish Tutorial', false],
			['Finish project', true]
		];
	}

	void loadData() {
		toDoList = _myBox.get('TODOLIST');
	}

	void updateDataBase(){
		_myBox.put('TODOLIST', toDoList);
	}
}