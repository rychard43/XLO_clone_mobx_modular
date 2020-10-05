import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../models/user_model.dart';
part 'user_manager_store.g.dart';

@Injectable()
class UserManagerStore = _UserManagerStoreBase with _$UserManagerStore;

abstract class _UserManagerStoreBase with Store {
  @observable
  UserModel user;

  @action
  void setUser(UserModel value) => user = value;

  @computed
  bool get isLoggedIn => user != null;

}
