import 'package:flutter/material.dart';
import 'package:my_app/ui/smart_widget/double_increament_counter/double_increamnt_counter_view.dart';
import 'package:my_app/ui/smart_widget/single_increamnt_counter/single_increamnt_counter_view.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleIncreamentView(),
            SizedBox(
              width: 30,
            ),
            DoubleIncreamentView()
          ],
        ),
      ),
    );
  }
}
