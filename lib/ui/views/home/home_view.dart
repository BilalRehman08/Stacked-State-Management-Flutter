import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_practice/ui/views/startup/startup_view.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
                child: Center(child: Text("${model.count}",))),

                ElevatedButton(onPressed: (){
                    model.updateCounter();
                }, child: const Text("Increament 1")),
                ElevatedButton(onPressed: (){
                    model.doubleCounter();  
                }, child: const Text("Multiply by 2")),
              ],
            ),
        ),
          ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}