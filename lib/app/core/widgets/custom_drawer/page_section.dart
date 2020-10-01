import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xlo_mobx_parse/app/modules/base/base_controller.dart';
import 'package:xlo_mobx_parse/app/core/widgets/custom_drawer/page_tile.dart';

class PageSection extends StatelessWidget {
  final BaseController _baseController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúncios',
          iconData: Icons.list,
          onTap: () {
            _baseController.setPage(0);
          },
          highlighted: _baseController.page == 0,
        ),
        PageTile(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          onTap: () {
            _baseController.setPage(1);
          },
          highlighted: _baseController.page == 1,
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {
            _baseController.setPage(2);
          },
          highlighted: _baseController.page == 2,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {
            _baseController.setPage(3);
          },
          highlighted: _baseController.page == 3,
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          onTap: () {
            _baseController.setPage(4);
          },
          highlighted: _baseController.page == 4,
        ),
      ],
    );
  }
}
