import 'entities.dart';

class EntityFactory {
  static Advertisement advertisement({
    int id = 0,
    String name = 'Akku',
    String advertiser = 'XXL',
    String description = 'He knows how to fly',
    String image = 'https://www.xxl.fi/filespin/9deb2a549f394c7c9012978baef72b13?resize=544,544&quality=90',
    String link = 'https://www.xxl.fi/new-balance-nitrel-v3-naisten-maastojuoksukengat-sininen/p/1168929_1_style',
    String price = '10 \£'
  }) => Advertisement(
    id: id,
    name: name,
    advertiser: advertiser,
    description: description,
    image: image,
    link: link,
    price: price,
  );

  static Advertisement shoes({
    int id = 1,
    String name = 'Nitrel V3',
    String advertiser = 'XXL',
    String description = 'Nitrel V3, naisten maastojuoksukengät, Sininen',
    String image = 'https://www.xxl.fi/filespin/9deb2a549f394c7c9012978baef72b13?resize=767,767&quality=90',
    String link = 'https://www.xxl.fi/new-balance-nitrel-v3-naisten-maastojuoksukengat-sininen/p/1168929_1_style',
    String price = '79,90 \£'
  }) => Advertisement(
    id: id,
    name: name,
    advertiser: advertiser,
    description: description,
    image: image,
    link: link,
    price: price,
  );

  static Advertisement jacket({
    int id = 2,
    String name = 'Cruise Jacket',
    String advertiser = 'XXL',
    String description = 'Miesten ulkoilutakki, Dark Blue',
    String image = 'https://www.xxl.fi/filespin/a47cfc530bda4437afb10a2a5ee3d9f2?resize=544,544&quality=90',
    String link = 'https://www.xxl.fi/craft-cruise-jacket-miesten-ulkoilutakki-dark-blue/p/1121529_4_style',
    String price = '59,90 \£'
  }) => Advertisement(
    id: id,
    name: name,
    advertiser: advertiser,
    description: description,
    image: image,
    link: link,
    price: price,
  );

  static Advertisement watch({
    int id = 3,
    String name = 'Suunto 7',
    String advertiser = 'XXL',
    String description = 'Musta',
    String image = 'https://www.xxl.fi/filespin/6e2f15feb128414395e625c8b73b7aeb?resize=544,544&quality=90',
    String link = 'https://www.xxl.fi/suunto-suunto-7-black-musta/p/1173673_1_style',
    String price = '349 \£'
  }) => Advertisement(
    id: id,
    name: name,
    advertiser: advertiser,
    description: description,
    image: image,
    link: link,
    price: price,
  );

  static Advertisement skies({
    int id = 4,
    String name = 'SkinPro ski',
    String advertiser = 'XXL',
    String description = 'Xcelerator CL 2.0 + ski tie, unisex-pitokarvasuksipaketti, STD',
    String image = 'https://www.xxl.fi/filespin/082d51f59a724b7493ead4aa9c095086?resize=544,544&quality=90',
    String link = 'https://www.xxl.fi/peltonen-skinpro-ski-xcelerator-cl-2-0-ski-tie-unisex-pitokarvasuksipaketti/p/1180561_1_style',
    String price = '179 \£'
  }) => Advertisement(
    id: id,
    name: name,
    advertiser: advertiser,
    description: description,
    image: image,
    link: link,
    price: price,
  );
}
