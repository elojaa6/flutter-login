// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';

class NavBarCell extends StatelessWidget {
  const NavBarCell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Oflutter.com'),
            accountEmail: const Text("examplea@.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('../../../images/person.png',
                    width: 90, height: 90, fit: BoxFit.cover),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('../../../images/menuImg.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Perfil'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Perfil'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Perfil'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Perfil'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
