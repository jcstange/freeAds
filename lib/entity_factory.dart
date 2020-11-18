
import 'entities.dart';

class EntityFactory {
  EntityFactory();

  Advertisement advertisement({
    int id = 0,
    String name = 'Akku',
    String description = 'He knows how to fly',
    String image = 'https://www.xxl.fi/filespin/9deb2a549f394c7c9012978baef72b13?resize=544,544&quality=90',
    String link = 'https://www.xxl.fi/new-balance-nitrel-v3-naisten-maastojuoksukengat-sininen/p/1168929_1_style',
    String price = '10 \£'
  }) => Advertisement(
    id: id,
    name: name,
    description: description,
    image: image,
    link: link,
    price: price,
  );

  Advertisement shoes({
    int id = 1,
    String name = 'Nitrel V3',
    String description = 'Nitrel V3, naisten maastojuoksukengät, Sininen',
    String image = 'https://www.xxl.fi/filespin/9deb2a549f394c7c9012978baef72b13?resize=767,767&quality=90&bgcolor=efefef',
    String link = 'https://www.xxl.fi/new-balance-nitrel-v3-naisten-maastojuoksukengat-sininen/p/1168929_1_style',
    String price = '79,90 \£'
  }) => Advertisement(
    id: id,
    name: name,
    description: description,
    image: image,
    link: link,
    price: price,
  );

  Advertisement jacket({
    int id = 2,
    String name = 'Cruise Jacket',
    String description = 'Miesten ulkoilutakki, Dark Blue',
    String image = 'https://www.xxl.fi/filespin/a47cfc530bda4437afb10a2a5ee3d9f2?resize=544,544&quality=90',
    String link = 'https://www.xxl.fi/craft-cruise-jacket-miesten-ulkoilutakki-dark-blue/p/1121529_4_style',
    String price = '59,90 \£'
  }) => Advertisement(
    id: id,
    name: name,
    description: description,
    image: image,
    link: link,
    price: price,
  );
}

