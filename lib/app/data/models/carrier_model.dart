class CarrierModel {
  CarrierModel({
    this.id,
    this.name,
  });

  int id;
  String name;

  factory CarrierModel.fromJson(Map<String, dynamic> json) => CarrierModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
