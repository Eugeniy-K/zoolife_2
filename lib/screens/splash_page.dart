import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoolife_2/logic/blocs/bottom_tabbar_bloc/bottom_tabbar_bloc.dart';
import 'package:zoolife_2/widgets/root_widget.dart';
import '../constants.dart';
import '../theme.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: theme.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleApp,
              style: TextStyle(
                fontSize: 35,
                color: theme.accentColor,
                fontFamily: 'ArialNova',
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: theme.accentColor, height: 10, width: 75,),
                Container(color: theme.primaryColorLight, height: 10, width: 80,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 2),
    //         () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (_) => BlocProvider.value(
    //           value: BlocProvider.of<BottomTabBarBloc>(context),
    //           child: RootWidget(),),
    //     ),
    //     ));

    Timer(Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => RootWidget(),),
        ),
    );
  }
}


