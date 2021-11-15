class News {
  late final int id;
  String? title;
  String? type;
  String? createdTime;
  String? image;

  News({required this.id, this.title, this.type, this.createdTime, this.image});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    createdTime = json['createdTime'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['createdTime'] = this.createdTime;
    data['image'] = this.image;
    return data;
  }
}
