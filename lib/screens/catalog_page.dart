import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoolife_2/constants.dart';
import 'package:zoolife_2/logic/cubits/internet/internet_cubit.dart';
import 'package:zoolife_2/screens/test_page.dart';
import 'package:zoolife_2/widgets/nointernet_widget.dart';

import '../theme.dart';

class CatalogPage extends StatelessWidget {
  static const route = '/catalog';
  final WillPopCallback _onWillPop;
  late bool fromHomePage;

  CatalogPage(this._onWillPop, [fromHome]) {
    this.fromHomePage = fromHome ?? false;
  }

  @override
  Widget build(BuildContext context) {

    if (fromHomePage) {

    }
    return BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.primaryColor,
            appBar: AppBar(
              leadingWidth: 100,
              centerTitle: true,
              backgroundColor: theme.primaryColorDark,
              title: Text(catalog),
              leading: TextButton(
                  onPressed: (){ _onWillPop(); },
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(0),
                          child: Icon(Icons.arrow_back_ios,
                            color: theme.disabledColor,)),
                      Text('Назад',
                        style: TextStyle(
                          fontSize: 18, fontFamily: 'ArialNova',
                            color: theme.disabledColor
                        ),
                      )
                    ],
                  ),
              ),
              bottom: state is InternetConnected ? PreferredSize(
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
                          onPressed: () {},
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
              : null,
            ),
            body: state is InternetConnected ? CatalogBody() : NoInternetWidget(),
          );
        }
    );
  }


}

class CatalogBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        
    );
  }
  
}
