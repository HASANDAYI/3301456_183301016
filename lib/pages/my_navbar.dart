import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galeria/pages/second_page/profil_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home_page/home.dart';
import 'muhasebe_page/muhasebe_page.dart';


class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  //persistent_bottom_nav_bar: ^4.0.2 navbar
  // dökümandan faydalandım
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    // bu Fonksiyonasayfaların içeriği
    return [
      const Home(),
      const Muhasebe(),
      const ProfilPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    //bunlar ise navbar itemleidir
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Araçlarım"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chart_bar_square),
        title: ("Muhasebe"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Profil"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // example dan alınan örnek
    // özelleştirme yapılmayacağı için bire bir kullanıldı
    // Yapımıza uygum
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      //ekranlar
      items: _navBarsItems(),
      //ikonlar
      confineInSafeArea: true,
      // safearea özelliği
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
