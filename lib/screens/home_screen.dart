import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_alarm/screens/add_alarm_screen.dart';
import 'package:my_alarm/utils/navigator_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.push(const AddAlarmScreen());
        },
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('12.00'),
                    Text('Once'),
                  ],
                ),
                trailing: CupertinoSwitch(
                  value: true,
                  activeColor: Colors.blue,
                  onChanged: (val) {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
