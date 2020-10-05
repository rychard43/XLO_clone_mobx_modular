import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:xlo_mobx_parse/app/core/models/user_model.dart';
import 'package:xlo_mobx_parse/app/core/utils/utils.dart';
import 'package:xlo_mobx_parse/app/modules/login/repositories/user_login_repository_interface.dart';
import '../../signup/repositories/parse_errors.dart';

class UserLoginRepository implements IUserLoginRepository {
  @override
  Future<UserModel> login(UserModel userModel) async{


    final parseUser = ParseUser(userModel.email, userModel.password, null);

    final response = await parseUser.login();

    if(response.success){
      return Utils.mapParseToUser(response.result);
    }else{
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

}
