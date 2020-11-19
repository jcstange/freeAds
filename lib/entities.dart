class Advertisement {
  int id;
  String name;
  int ownerId;
  String owner;
  String description;
  String image;
  List<String> tags;
  String link;
  String price;
  String promo_code;
  String discount_precent;

  Advertisement({
    this.id,
    this.name,
    this.ownerId,
    this.owner,
    this.description,
    this.image,
    this.tags,
    this.link,
    this.price
  });

  Advertisement.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        ownerId = json['owner_id'],
        owner = json['owner'],
        description = json['description'],
        image = json['image'],
        tags = json['tags'] != null ? List.from(json['tags']) : null,
        link = json['link'],
        price = json['price'];

}

class User {
  int id;
  String name;
  String image;
  String email;
  String link;
  String phone;
  List<int> advertisements;
  List<int> follow;
  List<int> followers;
  List<String> tags;

  User({
    this.id,
    this.name,
    this.image,
    this.email,
    this.link,
    this.phone,
    this.advertisements,
    this.follow,
    this.followers,
    this.tags,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['image'],
        email = json['email'],
        link = json['link'],
        phone = json['phone'];
}