import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

BottomNavigationBar buildBottomNavigationAppBar(
    {required int currentIndex, required Function onTap}) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (index) {
      onTap(index);
    },
    backgroundColor: Colors.white,
    elevation: 20,
    selectedIconTheme: const IconThemeData(
      color: ColorsManager.blueColor,
      size: 32,
    ),
    selectedItemColor: ColorsManager.blueColor,
    showSelectedLabels: true,
    showUnselectedLabels: false,
    unselectedIconTheme: IconThemeData(
      color: ColorsManager.blueColor.withOpacity(.6),
      size: 26,
    ),
    selectedLabelStyle:
        TextStyles.font16GreyMedium.copyWith(color: ColorsManager.blueColor),
    type: BottomNavigationBarType.fixed,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          IconBroken.Home,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          IconBroken.Profile,
        ),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          IconBroken.Info_Square,
        ),
        label: 'Help',
      ),
    ],
  );
}
