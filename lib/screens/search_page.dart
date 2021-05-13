import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoolife_2/logic/cubits/internet/internet_cubit.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Search'),
            ),
          );
        });
  }
}
