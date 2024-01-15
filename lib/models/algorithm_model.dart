class Algorithm {
  int id;
  String? name;
  String? slug;
  String? icon;
  String? image;
  String? description;
  String? about;
  bool? isAllowed;

  Algorithm({
    required this.id,
    required this.name,
    required this.slug,
    required this.icon,
    required this.image,
    required this.description,
    required this.about,
    required this.isAllowed,
  });

  // factory Algorithm.fromJson(Map<String, dynamic> json) {
  //   return Algorithm(
  //     id: json['id'],
  //     name: json['name'],
  //     slug: json['slug'],
  //     icon: json['icon'],
  //     image: json['image'],
  //     about: json['about'],
  //     isAllowed: json['is_allowed'],
  //   );
  // }
}
