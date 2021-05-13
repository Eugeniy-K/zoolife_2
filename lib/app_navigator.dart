// import 'package:flutter/material.dart';
// import 'package:zoolife_2/models/bottom_apptab.dart';
// import 'package:zoolife_2/screens/basket_page.dart';
// import 'package:zoolife_2/screens/catalog_page.dart';
// import 'package:zoolife_2/screens/home_page.dart';
// import 'package:zoolife_2/screens/profile_page.dart';
//
// class AppNavigatorRoutes {
//   static const String root = '/';
//   static const String detail = '/detail';
// }
//
// class AppNavigator extends StatelessWidget {
//   AppNavigator({required this.navigatorKey, required this.tabItem});
//
//   final GlobalKey<NavigatorState> navigatorKey;
//   final BottomAppTab tabItem;
//
//   Widget _buildRootWidget(BuildContext context) {
//     if (tabItem == BottomAppTab.main) {
//       return HomePage();
//     } else if (tabItem == BottomAppTab.catalog) {
//       return CatalogPage();
//     } else if (tabItem == BottomAppTab.basket) {
//       return BasketPage();
//     } else {
//       return ProfilePage();
//     }
//   }
//
//   Widget _buildDetailWidget(BuildContext context, dynamic item) {
//     return Container();
//   }
//
//   Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
//       {dynamic item}) {
//     return {
//       AppNavigatorRoutes.root: (context) => _buildRootWidget(context),
//       AppNavigatorRoutes.detail: (context) => _buildDetailWidget(context, item)
//     };
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final routeBuilders = _routeBuilders(context);
//     return Navigator(
//       key: navigatorKey,
//       initialRoute: AppNavigatorRoutes.root,
//       onGenerateRoute: (routeSettings) {
//         return MaterialPageRoute(
//             builder: (context) => routeBuilders[routeSettings.name]!(context));
//       },
//     );
//   }
// }
