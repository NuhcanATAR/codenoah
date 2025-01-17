import 'package:codenoah/codenoah.dart';
import 'package:example/view/image_example/image_viewmodel.dart';
import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends ImageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image View"),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: const <Widget>[
              // normal image
              CodeNoahImageAsset(
                toImg: 'assets/images/exampleimg.png',
                width: 122,
                height: 122,
              ),
              // svg image
              CodeNoahImageSvg(
                toImg: 'assets/images/example.svg',
                width: 122,
                height: 122,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
