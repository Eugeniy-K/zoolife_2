import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoolife_2/logic/cubits/internet/internet_cubit.dart';
import 'package:zoolife_2/theme.dart';

import 'logic/blocs/bottom_tabbar_bloc/bottom_tabbar_bloc.dart';
import 'screens/splash_page.dart';
import 'screens/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => InternetCubit(connectivity: Connectivity())),
        ],
        child: MaterialApp(
          // theme: ThemeData(
          //   primaryColor: theme.primaryColor,
          // ),
          home: SplashPage(),
        )
    );
  }
}


