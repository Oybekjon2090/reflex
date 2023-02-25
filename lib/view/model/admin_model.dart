class AdminModel {
  final String login;
  final String parol;

  AdminModel({required this.login, required this.parol});

  factory AdminModel.fromJson(Map data) {
    return AdminModel(login: data["login"], parol: data["password"]);
  }

  toJson() {
    return {"login": login, "password": parol};
  }
}
