import 'package:flutter/cupertino.dart';
import 'package:xlo_mobx_parse/app/core/enum/user_type.dart';

class UserModel {
  String name;
  String email;
  String phone;
  String password;
  UserType type;
  String id;
  DateTime createdAt;

  UserModel(
      {this.name,
      this.email,
      this.phone,
      this.password,
      this.type = UserType.PARTICULAR,
      this.id,
      this.createdAt});

  @override
  String toString() {
    return 'UserModel{name: $name, email: $email, phone: $phone, password: $password, type: $type, id: $id, createdAt: $createdAt}';
  }
}
