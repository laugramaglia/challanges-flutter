class Test {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String slug;
  final bool published;

  Test({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.slug,
    required this.published,
  });

  factory Test.fromJson(Map<String, dynamic> json) {
    return Test(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      slug: json['slug'],
      published: json['published'],
    );
  }
}
