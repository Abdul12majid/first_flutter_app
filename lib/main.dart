import 'package:flutter/material.dart';

import 'package:first_app/projects/scaf_folds/first_page.dart';
import 'package:first_app/projects/scaf_folds/second_page.dart';

import 'package:first_app/projects/counter/counter_page.dart';
import 'package:first_app/pages/base_homepage.dart';

import 'package:first_app/projects/to_do/todo_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:first_app/projects/e_commerce/intro_page.dart';
import 'package:first_app/projects/e_commerce/e_homepage.dart';
import 'package:first_app/projects/e_commerce/cart_page.dart';
import 'package:first_app/projects/e_commerce/models/cart.dart';

import 'package:provider/provider.dart';




void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
   MyApp({ super.key});

  
  @override
  Widget build(BuildContext context){


    return ChangeNotifierProvider(
      
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseHomePage(),
      
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
        '/counterpage': (context) => CounterPage(),
        '/todopage': (context) => TodoPage(),
        '/ecommerce': (context) => IntroPage(),
        '/e_homepage': (context) => HomePage(),
        '/cartpage': (context) => CartPage(),
        '/b_homepage': (context) => BaseHomePage(),
        },
      ) // MaterialApp
      ); //ChangedNotifierProvider
  }
}  
