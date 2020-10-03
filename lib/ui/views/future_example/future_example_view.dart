import 'package:flutter/material.dart';
import 'package:my_app/ui/views/future_example/future_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureBuildViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Container(
              child: model.isBusy
                  ? CircularProgressIndicator()
                  : Text(
                      model.data,
                    ),
            ),
          ),
        );
      },
      viewModelBuilder: () => FutureBuildViewModel(),
    );
  }
}
