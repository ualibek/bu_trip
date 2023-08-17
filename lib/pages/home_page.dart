import 'package:bu_trip/etc/app_icons.dart';
import 'package:bu_trip/theme/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();

  int _selectedIndex = 0;

  void _onItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.light_grey,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage("images/mountain0.jpg"),
                ),
                SearchBar(
                    searchController: searchController,
                    onSearch: (String query){}
                ),
              ],
            ),
          ],
        ),




        // Bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  icon: Icon(AppIcons.home, size: 48),
                  label: "Home",
                  backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.map, size: 48,),
                label: "Map",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.profile, size: 48,),
                label: "Profile",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.info, size: 48,),
                label: "Info",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.more, size: 48,),
                label: "More",
                backgroundColor: Colors.white,
              ),
            ],
          selectedItemColor: CustomColors.brown,
          unselectedItemColor: CustomColors.teal,
          showSelectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemPressed,
        ),
      ),
    );
  }
}
