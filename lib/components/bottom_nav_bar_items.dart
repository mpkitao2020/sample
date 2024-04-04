import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/constants.dart';

Widget buildIconWithBadge(String assetName, {bool hasNotification = false}) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      SvgPicture.asset(assetName),
      if (hasNotification)
        Positioned(
          right: -6,
          top: -6,
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
    ],
  );
}

List<BottomNavigationBarItem> buildBottomNavBarItems(bool showNotification) {
  return [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('${AssetPaths.iconsPath}home_outlined.svg'),
      activeIcon: SvgPicture.asset('${AssetPaths.iconsPath}home_filled.svg'),
      label: AppStrings.home,
    ),
    BottomNavigationBarItem(
      icon: buildIconWithBadge('${AssetPaths.iconsPath}bookmark_outlined.svg',
          hasNotification: showNotification),
      activeIcon: buildIconWithBadge(
          '${AssetPaths.iconsPath}bookmark_filled.svg',
          hasNotification: showNotification),
      label: AppStrings.bookmark,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('${AssetPaths.iconsPath}mypage_outlined.svg'),
      activeIcon: SvgPicture.asset('${AssetPaths.iconsPath}mypage_filled.svg'),
      label: AppStrings.mypage,
    ),
  ];
}
