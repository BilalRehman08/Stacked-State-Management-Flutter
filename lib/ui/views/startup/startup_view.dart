import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_practice/ui/views/home/home_view.dart';
import 'package:stacked_practice/ui/views/startup/startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: const Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeView()),
  );
          },
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}