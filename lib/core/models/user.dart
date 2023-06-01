class User {
  User({
    this.createdAt,
    this.name,
    this.avatar,
    this.id
  });

  DateTime? createdAt;
  String? name;
  String? avatar;
  String? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    name: json["name"],
    avatar: json["avatar"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
    "name": name,
    "avatar": avatar,
    "id": id,
  };
}