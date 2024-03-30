class Product {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final Rating? rating;
  final String category;
  Product(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory Product.fromJson(jsonData) {
    return Product(
      id: jsonData['id'],
      title: jsonData['title'],
      category: jsonData['category'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: jsonData['rating'] == null
          ? null
          : Rating.fromJson(
              jsonData['rating'],
            ),
    );
  }
}

class Rating {
  final dynamic rate;
  final int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(jsonData) {
    return Rating(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
