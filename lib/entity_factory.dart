
class EntityFactory {

  static String shoes =
  '''
  {
   "id":1,
   "name":"Nitrel V3",
   "owner_id":1,
   "owner":"XXL",
   "description":"Nitrel V3, naisten maastojuoksukengät, Sininen",
   "image":"https://www.xxl.fi/filespin/9deb2a549f394c7c9012978baef72b13?resize=767,767&quality=90",
   "link":"https://www.xxl.fi/new-balance-nitrel-v3-naisten-maastojuoksukengat-sininen/p/1168929_1_style",
   "tags":[
     "shoes",
     "sports"
   ],
   "price":"79,90 €"
  }
  ''';

  static String jacket =
  '''
  {
   "id":2,
   "name":"Cruise Jacket",
   "owner_id":1,
   "owner":"XXL",
   "description":"Miesten ulkoilutakki, Dark Blue",
   "image":"https://www.xxl.fi/filespin/a47cfc530bda4437afb10a2a5ee3d9f2?resize=544,544&quality=90",
   "link":"https://www.xxl.fi/craft-cruise-jacket-miesten-ulkoilutakki-dark-blue/p/1121529_4_style",
   "tags":[
     "jacket",
     "sports"
   ],
   "price":"59,90 €"
  }
  ''';

  static String watch =
  '''
  {
   "id":3,
   "name":"Suunto 7",
   "owner_id":1,
   "owner":"XXL",
   "description":"Musta",
   "image":"https://www.xxl.fi/filespin/6e2f15feb128414395e625c8b73b7aeb?resize=544,544&quality=90",
   "link":"https://www.xxl.fi/suunto-suunto-7-black-musta/p/1173673_1_style",
   "tags":[
      "electronics",
      "watch",
      "sports"
   ],
   "price":"349 €"
  }
  ''';

  static String skies =
  '''
  {
   "id":4,
   "name":"SkinPro ski",
   "owner_id":1,
   "owner":"XXL",
   "description":"Xcelerator CL 2.0 + ski tie, unisex-pitokarvasuksipaketti, STD",
   "image":"https://www.xxl.fi/filespin/082d51f59a724b7493ead4aa9c095086?resize=544,544&quality=90",
   "link":"https://www.xxl.fi/peltonen-skinpro-ski-xcelerator-cl-2-0-ski-tie-unisex-pitokarvasuksipaketti/p/1180561_1_style",
   "tags":[
      "winter",
      "snow",
      "sports"
   ],
   "price":"179 €"
  }
  ''';

  static String creator =
  '''
  {
    "id":0,
    "name":"Creator",
    "image":"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.ApSA859-IfqS774hjuTcmgHaFj%26pid%3DApi&f=1",
    "link":"",
    "email":"creator@gmail.com",
    "phone":"+358404004040",
    "follow":[1],
    "followers":[],
    "tags":["shoes"]
  }
  ''';

  static String xxl =
  '''
  {
    "id":1,
    "name":"XXL",
    "image":"https://www.xxl.fi/content/images/143a2bb4f277e1372e0e372548492b78e02586ac-312x162.svg?auto=format&fit=crop&crop=focalpoint&fp-x=0.5&fp-y=0.5",
    "email":"xxl@xxl.fi",
    "link":"http://www.xxl.fi/",
    "phone":"+358404004040",
    "advertisements":[1,2,3,4],
    "follow":[],
    "followers":[0],
    "tags":[]
  }
  ''';

  static String advertisements =
  '''
  [
    $shoes,
    $jacket,
    $watch,
    $skies
  ]
  ''';

}