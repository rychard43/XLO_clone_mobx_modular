import '../../../core/models/user_model.dart';

abstract class IUserLoginRepository{

  Future<UserModel> login(UserModel userModel);


}