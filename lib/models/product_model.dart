class Product {
  final int id;
  final String title;
  final num price;
  final String description;
  final String image;
  final Rating? rating;
  final String category;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating,
      required this.category});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
      category: json['category'],
    );
  }
}

class Rating {
  final num rate;
  final int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'],
      count: json['count'],
    );
  }
}
