class AccountModel {
  AccountModel({
    this.img,
    this.name,
    this.numberLike,
    this.descriptino,
  });

  String img;
  String name;
  int numberLike;
  String descriptino;

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
    img: json["img"],
    name: json["name"],
    numberLike: json["numberLike"],
    descriptino: json["descriptino"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "name": name,
    "numberLike": numberLike,
    "descriptino": descriptino,
  };
}
