import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home/cards/cards_screen.dart';
import '../../../config/meun/menu_items.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];

          return _CustomListTitle(menuItem: menuItem);
        });
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    
    final Colors = Theme.of(context).colorScheme;

    return ListTile(
      iconColor: Colors.primary,
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      leading: Icon(menuItem.icon),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        // Navigator.pushNamed(context, menuItem.link);

        // todo : navegar a otras pantallas
        context.push( menuItem.link );
        // context.push( CardsScreen.name );
      },
    );
  }
}
