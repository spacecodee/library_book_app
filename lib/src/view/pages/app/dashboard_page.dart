import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsScaffold(
        animationCurve: Curves.easeInOut,
        backgroundColor: SCColors.freeColor,
        routes: const [
          HomeRoute(),
          UserRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            backgroundColor: SCColors.freeColor,
            selectedItemColor: SCColors.primary,
            unselectedItemColor: SCColors.accent,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home, color: SCColors.accent),
                activeIcon: Icon(Icons.home_filled, color: SCColors.primary),
              ),
              BottomNavigationBarItem(
                label: 'User',
                icon: Icon(Icons.person_pin, color: SCColors.accent),
                activeIcon:
                    Icon(Icons.person_pin_circle, color: SCColors.primary),
              ),
            ],
          );
        },
      ),
    );
  }
}
