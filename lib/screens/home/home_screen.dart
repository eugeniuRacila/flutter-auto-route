import 'package:auto_route/auto_route.dart';
import 'package:bristoli/core/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      // bottomNavigationBuilder: buildBottomNav,
      routes: const [MainRouter(), MyTasksRouter(), ProfileRouter()],
      builder: ((context, child, pageController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: buildBottomNav(
            context,
            context.tabsRouter,
          ),
        );
      }),
    );
  }

  Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
    final hideBottomNavigation =
        tabsRouter.topRoute.meta['hideBottomNavigation'] ?? false;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: hideBottomNavigation ? 0 : 89,
      child: Wrap(
        children: [
          BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Main',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'My Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Profile',
              ),
            ],
            onTap: tabsRouter.setActiveIndex,
          ),
        ],
      ),
    );
  }
}
