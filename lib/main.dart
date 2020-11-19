import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:free_ads/ui_styles.dart';
import 'entities.dart';
import 'entity_factory.dart';
import 'advertisement_item_ui.dart';

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

  List<Advertisement> advertisements = [
  	Advertisement.fromJson(jsonDecode(EntityFactory.shoes)),
		Advertisement.fromJson(jsonDecode(EntityFactory.watch)),
		Advertisement.fromJson(jsonDecode(EntityFactory.jacket)),
		Advertisement.fromJson(jsonDecode(EntityFactory.skies)),
	];

  List<Advertisement> filteredAdvertisements;

  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    print(Advertisement.fromJson(jsonDecode(EntityFactory.shoes)).link);
    _controller = TextEditingController();
    _controller.addListener(() {
			final suggestionList = _controller.text.toLowerCase().isEmpty
					? advertisements
					: advertisements.where((advertisement) {
				String search = _controller.text.toLowerCase().trim();
				//Filter by advertisement name
				return advertisement.name.toLowerCase().contains(search)
				//Filter by owner
						|| advertisement.owner.toLowerCase().contains(search)
				//Filter by tag
						|| advertisement.tags?.firstWhere((tag) => tag.toLowerCase().contains(search), orElse: () => null) != null ?? false;
			}).toList();
			setState(() {
				filteredAdvertisements = suggestionList;
			});
		});
    filteredAdvertisements = advertisements;
  }

	@override
	Widget build(BuildContext context) {
		return Scaffold(
				backgroundColor: Colors.black,
				body: Container(
						margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
						width: double.infinity,
						height: double.infinity,
						child: Column(
							children: [
								SizedBox(height: 10,),
								Container(
										margin: EdgeInsets.symmetric(horizontal: 5.0),
										child: Row(
												mainAxisAlignment: MainAxisAlignment.start,
												crossAxisAlignment: CrossAxisAlignment.center,
												children: [
													Expanded(
														flex: 5,
														child: TextFormField(
															controller: _controller,
															cursorColor: Colors.grey,
															decoration: InputDecoration(
																	enabledBorder: OutlineInputBorder(
																		borderSide: BorderSide(
																			color: Colors.white,
																			width: 1.0,
																		),
																	),
																	focusedBorder: OutlineInputBorder(
																		borderSide: BorderSide(
																			color: Colors.white,
																			width: 1.0,
																		),
																	),
																	labelText: 'Search',
																	labelStyle: UIStyles.description().copyWith(color: Colors.grey)
															),
															style: UIStyles.header(),
														),
													),
													Expanded(
														flex: 1,
														child: GestureDetector(
															child: Icon(Icons.settings, color: Colors.white,),
															onTap: () => print("Settings click"), //Navigator.push(context, MaterialPageRoute()),
														),
													)
												]
										)
								),
								Expanded(child: AdvertisementGrid(filteredAdvertisements))
							],
						)
				)
		);
	}
}





