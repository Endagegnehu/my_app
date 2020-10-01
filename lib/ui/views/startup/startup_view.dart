import 'package:flutter/material.dart';
import 'package:my_app/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('startUp'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.navigateToHome,
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
