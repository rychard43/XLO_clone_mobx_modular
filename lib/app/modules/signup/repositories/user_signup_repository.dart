import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:xlo_mobx_parse/app/core/constant/table_keys.dart';
import 'package:xlo_mobx_parse/app/core/models/user_model.dart';
import 'package:xlo_mobx_parse/app/core/utils/utils.dart';
import 'package:xlo_mobx_parse/app/modules/signup/repositories/parse_errors.dart';
import 'package:xlo_mobx_parse/app/modules/signup/repositories/user_signup_repository_interface.dart';

class UserSignupRepository implements IUserSignupRepository {
  @override
  Future<UserModel> signup(UserModel userModel) async {
    final parseUser =
        ParseUser(userModel.email, userModel.password, userModel.email);

    parseUser.set<String>(keyUserName, userModel.name);
    parseUser.set<String>(keyUserPhone, userModel.phone);
    parseUser.set(keyUserType, userModel.type.index);

    final response = await parseUser.signUp();

    if (response.success) {
      return Utils.mapParseToUser(response.result);
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

}
