import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class OneResponseView extends StatelessWidget {
  const OneResponseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomResponseWidget(
        img: Image.network(
            'https://logowik.com/content/uploads/images/flutter5786.jpg'),
        title: 'Response Title Text',
        subTitle: 'Response Sub Title',
      ),
    );
  }
}
