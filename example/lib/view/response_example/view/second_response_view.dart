import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class SecondResponseView extends StatelessWidget {
  const SecondResponseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomLoadingResponseWidget(
        title: 'Second Response Title',
        subTitle: 'Second Response Sub Title',
      ),
    );
  }
}
