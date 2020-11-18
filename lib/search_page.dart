import 'package:flutter/material.dart';
import 'entities.dart';
import 'entity_factory.dart';
import 'advertisement_item_ui.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Ads',
      theme: ThemeData(
			  primaryColor: Colors.black,
			  brightness: Brightness.light,
			  accentColor: Colors.black87,
			  ),
      home: MyHomePage(title: 'Free Ads')
	  );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Advertisement> list = [
  	EntityFactory().shoes(),
		EntityFactory().jacket(),
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
				appBar: AppBar(
						title: Text(widget.title),
						actions: [
							IconButton(
								icon: Icon(Icons.search),
								onPressed: () => showSearch(context: context, delegate: SearchData(list)),
							)
						]
				),
				backgroundColor: Colors.black,
				body: Center(
						child: AdvertisementGrid(list)
				)
		);
	}
}





