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
        title: Text('${widget.advertisement.owner} : ${widget.advertisement.name}'),
      ),
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Image.network(widget.advertisement.image),
              ),
              SizedBox(height:20),
              Text(
                'Description',
                style: UIStyles.highlight().copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                widget.advertisement.description,
                style: UIStyles.title().copyWith(fontWeight: FontWeight.w100),
              ),
              SizedBox(height:20),
              Text(
                'Advertiser',
                style: UIStyles.highlight().copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                widget.advertisement.owner,
                style: UIStyles.title().copyWith(fontWeight: FontWeight.w100),
              ),
              SizedBox(height:20),
              Text(
                'Price',
                style: UIStyles.highlight().copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                widget.advertisement.price,
                style: UIStyles.title().copyWith(fontWeight: FontWeight.w100),
              ),
              SizedBox(height:20),
              Text(
                'Link',
                style: UIStyles.highlight().copyWith(decoration: TextDecoration.underline),
              ),
              InkWell(
                  child: Text(
                    'Go to page',
                    style: UIStyles.title().copyWith(fontWeight: FontWeight.w100),
                  ),
                  onTap: () => launch(widget.advertisement.link)
              ),
              SizedBox(height:20),
            ],
          ),
        ),
      ),
    );
  }
}
