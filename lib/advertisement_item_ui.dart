import 'package:flutter/material.dart';
import 'package:free_ads/ui_styles.dart';
import 'entities.dart';
import 'advertisement_page.dart';

class AdvertisementGrid extends StatelessWidget {
  List<Advertisement> advertisementGrid;

  AdvertisementGrid(this.advertisementGrid);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: advertisementGrid.map(
                (advertisement) => AdvertisementView(advertisement: advertisement)
        ).toList()
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
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AdvertisementPage(advertisement: advertisement))),
        child: Stack(
            children: <Widget>[
              Image.network(advertisement.image),
              Positioned(
                  bottom:30,
                  right:10,
                  child: Text(
                    advertisement.name,
                    style: UIStyles.normal(),
                  )
              ),
              Positioned(
                  bottom:10,
                  right:10,
                  child: Text(
                    advertisement.price,
                    style: UIStyles.normal().copyWith(fontWeight: FontWeight.bold),
                  )
              ),
            ]
        )
    );
  }
}
