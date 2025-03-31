// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'number_list.provider.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context, numberListProvider, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              numberListProvider.add();
            },
            child: Icon(Icons.add)),
        appBar: AppBar(),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                '${numberListProvider.numbers.length}',
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberListProvider.numbers.length,
                  itemBuilder: (context, index) => Card(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '${numberListProvider.numbers[index]}',
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
