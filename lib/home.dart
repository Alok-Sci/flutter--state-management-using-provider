import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'second.dart';
import 'number_list.provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild home');

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
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ListView.builder(
                      itemCount: numberListProvider.numbers.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text('${numberListProvider.numbers[index]}'),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Second(),
                        ));
                  },
                  child: Text('Second Page'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
