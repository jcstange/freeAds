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
  	EntityFactory.shoes(),
		EntityFactory.jacket(),
    EntityFactory.watch(),
		EntityFactory.skies(),
	];

  List<Advertisement> filteredAdvertisements;

  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
			final suggestionList = _controller.text.toLowerCase().isEmpty
					? advertisements
					: advertisements.where((advertisement) =>
					advertisement.name.toLowerCase().startsWith(_controller.text.toLowerCase())).toList();
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
				body: Center(
						child: Column(
							children: [
								SizedBox(height: 10,),
								Container(
										margin: EdgeInsets.symmetric(horizontal: 5.0),
										child:TextFormField(
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
										)
								),
								Expanded(child: AdvertisementGrid(filteredAdvertisements))
							],
						)
				)
		);
	}
}





