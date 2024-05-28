import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:undefined/presentation/screen/home/views/favorite_view.dart';
import 'package:undefined/presentation/screen/home/views/home_view.dart';
import 'package:undefined/presentation/screen/home/views/profile_view.dart';
import 'package:undefined/presentation/screen/home/views/search_view.dart';
import 'package:undefined/presentation/widgets/botton_bar.dart';
import 'package:undefined/presentation/widgets/details_food.dart';

import 'package:undefined/domain/entities/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _views = [
    // Reemplaza HomeScreen() con la vista correspondiente a cada ítem
    const HomeView(), // Vista para el segundo ítem
    const SearchView(), // Vista para el tercer ítem
    const FavoriteView(), //
    const ProfileView() // Vista para el cuarto ítem
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _views[_selectedIndex],
        bottomNavigationBar: CustomNavBar(
          navItems: [
            CustomNavItem(
                iconName: Iconsax.home5, selected: _selectedIndex == 0),
            CustomNavItem(
                iconName: Iconsax.search_normal, selected: _selectedIndex == 1),
            CustomNavItem(
                iconName: Iconsax.notification5, selected: _selectedIndex == 2),
            CustomNavItem(
                iconName: Iconsax.user, selected: _selectedIndex == 3),
          ],
          onItemSelected: (int value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ));
  }
}
