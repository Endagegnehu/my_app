import 'package:flutter/material.dart';
import 'package:my_app/ui/smart_widget/double_increament_counter/double_increamnt_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreamentView extends StatelessWidget {
  const DoubleIncreamentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreamentModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Tap to Double increament',
                textAlign: TextAlign.center,
              ),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DoubleIncreamentModel(),
    );
  }
}
