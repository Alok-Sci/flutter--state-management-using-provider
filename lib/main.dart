import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt_using_provider/number_list.provider.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    /// MultiProvider is used to provide multiple providers to the widget tree
    /// In this case, we're providing a single NumberListProvider that will be
    /// accessible throughout the entire app
    return MultiProvider(
      providers: [
        /// ChangeNotifierProvider creates and provides a NumberListProvider instance
        /// This provider will be available to all widgets in the tree below
        ChangeNotifierProvider<NumberListProvider>(
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
