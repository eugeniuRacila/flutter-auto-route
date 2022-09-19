import 'package:auto_route/auto_route.dart';
import 'package:bristoli/core/routes/routes.gr.dart';
import 'package:bristoli/screens/main/main_screen.dart';
import 'package:bristoli/screens/my_tasks/my_tasks_screen.dart';
import 'package:bristoli/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
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
        );
      },
      routes: const [MainRouter(), MyTasksRouter(), ProfileRouter()],
    );
  }
}
