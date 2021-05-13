import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoolife_2/logic/cubits/internet/internet_cubit.dart';
import 'package:zoolife_2/screens/search_page.dart';
import 'package:zoolife_2/theme.dart';
import 'package:zoolife_2/widgets/nointernet_widget.dart';
import '../constants.dart';


class HomePage extends StatelessWidget {
  static const route = '/home';
  final ValueChanged<int> onSelectTab;

  HomePage(this.onSelectTab);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.primaryColor,
            appBar: AppBar(
              backgroundColor: theme.primaryColorDark,
              title: Column(
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
              bottom: state is InternetConnected ? PreferredSize(                             //кнопка поиска
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 0, bottom: 5, right: 10),
                  child: Container(
                    // width: MediaQuery.of(context).size.width - 20,
                    // height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        primary: Colors.white10
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SearchPage()));

                        },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.search_rounded, color: theme.disabledColor,),
                          SizedBox(width: 10,),
                          Text(search, style: TextStyle(
                              color: theme.disabledColor,
                              fontFamily: 'ArialNova'),)
                        ],
                      ),
                    ),
                  )
                ),
                preferredSize: Size.fromHeight(50))
                : null
            ),
            body: state is InternetConnected ? HomeBody() : NoInternetWidget(),
          );
        });
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Новинки',
            style: TextStyle(
              color: theme.scaffoldBackgroundColor,
              fontSize: 20
            ),),
          SizedBox(height: 50,),
          Text('Лучшая цена',
            style: TextStyle(
                color: theme.scaffoldBackgroundColor,
                fontSize: 20
            ),),
        ],
      ),
    );
  }
}

