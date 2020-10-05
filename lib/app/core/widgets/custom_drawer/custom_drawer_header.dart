import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/core/stores/user_manager_store.dart';

import '../../../modules/base/base_controller.dart';

class CustomDrawerHeader extends StatelessWidget {
  final userManagerStore = Modular.get<UserManagerStore>();
  final baseController = Modular.get<BaseController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pop();
        if (userManagerStore.isLoggedIn) {
          baseController.setPage(4);
        } else {
          Modular.to.pushNamed("/login");
        }
      },
      child: Container(
        color: Colors.purple,
        height: 95,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userManagerStore.isLoggedIn
                        ? userManagerStore.user.name
                        : "Acesse sua conta agora!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    userManagerStore.isLoggedIn
                        ? userManagerStore.user.email
                        : "Clique aqui",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
