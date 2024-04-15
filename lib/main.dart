// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt_using_provider/number_list.provider.dart';
import 'home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    print('rebuild main');

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NumberListProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
