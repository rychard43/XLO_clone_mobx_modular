import 'package:xlo_mobx_parse/app/core/models/user_model.dart';

abstract class IUserSignupRepository{

  Future<UserModel> signup(UserModel userModel);

}