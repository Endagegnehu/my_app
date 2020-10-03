import 'package:flutter/material.dart';
import 'package:my_app/ui/smart_widget/single_increamnt_counter/single_increamnt_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SingleIncreamentView extends StatelessWidget {
  const SingleIncreamentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreamentModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Tap to single increament',
                textAlign: TextAlign.center,
              ),
              Text(
                model.counter.toString(),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SingleIncreamentModel(),
    );
  }
}
