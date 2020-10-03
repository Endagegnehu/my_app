import 'package:flutter/material.dart';
import 'package:my_app/ui/views/future_example/future_example_viewmodel.dart';
import 'package:my_app/ui/views/stream_example/stream_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamBuildViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.titile),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => model.swapSourece()),
      ),
      viewModelBuilder: () => StreamBuildViewModel(),
    );
  }
}
