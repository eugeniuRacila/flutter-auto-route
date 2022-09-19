import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:bristoli/screens/home/home_screen.dart';
import 'package:bristoli/screens/main/main_screen.dart';
import 'package:bristoli/screens/my_tasks/my_tasks_screen.dart';
import 'package:bristoli/screens/my_tasks/task_details/task_details_screen.dart';
import 'package:bristoli/screens/profile/profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: HomeScreen, path: '/', children: [
      AutoRoute(
        name: 'MainRouter',
        page: EmptyRouterPage,
        path: 'main',
        children: [
          AutoRoute(page: MainScreen, path: ''),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
      AutoRoute(
        name: 'MyTasksRouter',
        page: EmptyRouterPage,
        path: 'my-tasks',
        children: [
          AutoRoute(page: MyTasksScreen, path: ''),
          AutoRoute(page: TaskDetailsScreen, path: ':taskId'),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
      AutoRoute(
        name: 'ProfileRouter',
        page: EmptyRouterPage,
        path: 'profile',
        children: [
          AutoRoute(page: ProfileScreen, path: ''),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
      // AutoRoute(page: MyTasksScreen, path: 'my-tasks'),
      // AutoRoute(page: ProfileScreen, path: 'profile'),
    ]),
  ],
)
class $AppRouter {}
