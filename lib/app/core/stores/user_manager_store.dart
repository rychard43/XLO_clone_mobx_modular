import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/core/utils/utils.dart';
import '../models/user_model.dart';
part 'user_manager_store.g.dart';

@Injectable()
class UserManagerStore = _UserManagerStoreBase with _$UserManagerStore;

abstract class _UserManagerStoreBase with Store {


  _UserManagerStoreBase(){
    _getCurrentUser();
  }

  @observable
  UserModel user;

  @action
  void setUser(UserModel value) => user = value;

  @computed
  bool get isLoggedIn => user != null;

  Future<void> _getCurrentUser()async{
    final user = await Utils.currentUser();
    setUser(user);
  }
}
