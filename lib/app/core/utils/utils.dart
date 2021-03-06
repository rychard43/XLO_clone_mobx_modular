import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../constant/table_keys.dart';
import '../enum/user_type.dart';
import '../models/user_model.dart';
import '../models/user_model.dart';

class Utils {
  static UserModel mapParseToUser(ParseUser parseUser) {
    return UserModel(
      name: parseUser.get(keyUserName),
      email: parseUser.get(keyUserEmail),
      phone: parseUser.get(keyUserPhone),
      id: parseUser.objectId,
      type: UserType.values[parseUser.get(keyUserType)],
      createdAt: parseUser.get(keyUserCreatedAt),
    );
  }

  static Future<UserModel> currentUser() async {
    final parseUser = await ParseUser.currentUser();
    if (parseUser != null) {
      final response =
          await ParseUser.getCurrentUserFromServer(parseUser.sessionToken);
      if (response.success) {
        return mapParseToUser(response.result);
      } else {
        await parseUser.logout();
      }
    }
    return null;
  }
}
