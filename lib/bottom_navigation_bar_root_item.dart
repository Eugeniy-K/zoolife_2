// import 'package:flutter/material.dart';
// import 'package:zoolife_2/screens/catalog_page.dart';
// import 'package:zoolife_2/screens/test_page.dart';
//
// import 'screens/home_page.dart';
//
// class BottomNavigationBarRootItem {
//   final String routeName;
//   final NestedNavigator nestedNavigator;
//   final BottomNavigationBarItem bottomNavigationBarItem;
//
//   BottomNavigationBarRootItem({
//     required this.routeName,
//     required this.nestedNavigator,
//     required this.bottomNavigationBarItem,
//   });
// }
//
// abstract class NestedNavigator extends StatelessWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//
//   NestedNavigator({Key? key, required this.navigatorKey}) : super(key: key);
// }
//
// class HomeNavigator extends NestedNavigator {
//   HomeNavigator({Key? key, required GlobalKey<NavigatorState> navigatorKey})
//       : super(
//     key: key,
//     navigatorKey: navigatorKey,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: navigatorKey,
//       initialRoute: '/',
//       onGenerateRoute: (RouteSettings settings) {
//         WidgetBuilder builder;
//         switch (settings.name) {
//           case '/home':
//             builder = (BuildContext context) => HomePage();
//             break;
//           case '/home/test_page':
//             builder = (BuildContext context) => TestPage();
//             break;
//           default:
//             throw Exception('Invalid route: ${settings.name}');
//         }
//         return MaterialPageRoute(
//           builder: builder,
//           settings: settings,
//         );
//       },
//     );
//   }
// }
//
// class CatalogNavigator extends NestedNavigator {
//   CatalogNavigator({Key? key, required GlobalKey<NavigatorState> navigatorKey})
//       : super(
//     key: key,
//     navigatorKey: navigatorKey,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: navigatorKey,
//       initialRoute: '/',
//       onGenerateRoute: (RouteSettings settings) {
//         WidgetBuilder builder;
//         switch (settings.name) {
//           case '/catalog':
//             builder = (BuildContext context) => CatalogPage();
//             break;
//
//           default:
//             throw Exception('Invalid route: ${settings.name}');
//         }
//         return MaterialPageRoute(
//           builder: builder,
//           settings: settings,
//         );
//       },
//     );
//   }
// }