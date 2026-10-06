import 'package:catalogo_produtos/screens/catalog_screen.dart';
import 'package:catalogo_produtos/screens/lifecycle_screen.dart';
import 'package:catalogo_produtos/screens/transformations_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const CatalogScreen(),
      const TransformationsScreen(),
      const LifecycleScreen(),
    ];

    return Scaffold(
      body: pages[_tabIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _tabIndex,
        onDestinationSelected: (i) {
          setState(() {
            _tabIndex = i;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.storefront_outlined),
            selectedIcon: Icon(Icons.storefront_rounded), 
            label: 'Catálogo'
            ),
            NavigationDestination(
            icon: Icon(Icons.transform_outlined),
            selectedIcon: Icon(Icons.transform_rounded), 
            label: 'Transformações'
            ),
            NavigationDestination(
            icon: Icon(Icons.history_outlined),
            selectedIcon: Icon(Icons.history_rounded), 
            label: 'Histórico'
            )
        ] 
        ),
    );
  }
}