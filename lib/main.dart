import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: GridView.count(
				  primary: false,
				  padding: const EdgeInsets.all(20),
				  crossAxisSpacing: 10,
				  mainAxisSpacing: 10,
				  crossAxisCount: 3,
				  children: <Widget>[
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
					  AdvertisementView(advertisement: EntityFactory().advertisement()),
				  ]
      	)
	  )
    );
  }
}


class Advertisement {
	int id;
	String name;
	String description;
	String image;
	String link;
	String price;
	String promo_code;
	String discount_precent; 

	Advertisement({
		this.id, 
		this.name, 
		this.description, 
		this.image,
		this.link, 
		this.price 
	});
}

class EntityFactory {
	EntityFactory();

	Advertisement advertisement() {
		return Advertisement(
				id: 0,
				name: 'Akku',
				description: 'He knows how to fly',
				image: 'https://www.purelypoultry.com/images/duck-hatching-eggs-1_01.jpg',
				link: 'https://www.xxl.fi/new-balance-nitrel-v3-naisten-maastojuoksukengat-sininen/p/1168929_1_style',
				price: '10 \$',
		);
	}
}

class AdvertisementView extends StatelessWidget {
	Advertisement advertisement;
	AdvertisementView({
		this.advertisement		
	});
	Widget build(BuildContext context) {
		return GestureDetector(
				onTap: () => print('Item ${advertisement.name}'),
				child: Stack(
						children: <Widget>[
								Image.network(advertisement.image),
								Positioned(
										bottom:30,
										right:10,
										child: Text(
												advertisement.name,
												style: TextStyle(
															fontSize: 16,
															color: Colors.white
														)
												)
								),
								Positioned(
										bottom:10,
										right:10,
										child: Text(
												advertisement.price,
												style: TextStyle(
															fontSize: 16,
															color: Colors.white
														)
												)
								),
							]
						)
		);
	}
} 
