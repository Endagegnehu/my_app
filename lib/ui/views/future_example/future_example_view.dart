import 'package:flutter/material.dart';
import 'package:my_app/ui/views/partial_builds/partial_build_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildViewModel>.nonReactive(
      builder: (context, model, child) {
        print('PartialView');
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _StringForm(),
              _TitleAndValue(),
            ],
          ),
        );
      },
      viewModelBuilder: () => PartialBuildViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildViewModel> {
  const _StringForm({Key key}) : super(key: key, reactive: false);
  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PartialBuildViewModel viewModel,
  ) {
    print('_StringForm');
    var text = TextEditingController();
    return Center(
      child: TextField(
        controller: text,
        onChanged: viewModel.updateString,
      ),
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildViewModel> {
  const _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildViewModel model) {
    return Column(
      children: [
        Text(
          model.title ?? '',
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }
}
