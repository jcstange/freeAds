import 'package:flutter/material.dart';
import 'package:free_ads/ui_styles.dart';
import 'entities.dart';
import 'package:url_launcher/url_launcher.dart';

class AdvertisementPage extends StatefulWidget {
  final Advertisement advertisement;
  AdvertisementPage({Key key, this.advertisement}) : super(key: key);

  @override
  _AdvertisementPageState createState() => _AdvertisementPageState();
}

class _AdvertisementPageState extends State<AdvertisementPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.advertisement.name),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Image.network(widget.advertisement.image),
          ),
          Text(
            widget.advertisement.description,
            style: UIStyles().title(),
          ),
          Text(
            widget.advertisement.price,
            style: UIStyles().header(),
          ),
          InkWell(
            child: Text('Go to page'),
            onTap: () => launch(widget.advertisement.link)
          )
        ],
      ),
    );
  }
}
