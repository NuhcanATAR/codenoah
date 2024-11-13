import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class CustomResponseWidget extends StatelessWidget {
  const CustomResponseWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
  });

  final Widget img;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingSizedsUtility.all(
        PaddingSizedsUtility.normalPaddingValue,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // img
              img,
              // title
              Padding(
                padding: PaddingSizedsUtility.top(
                  PaddingSizedsUtility.hightPaddingValue,
                ),
                child: TitleLargeBlackBoldText(
                  text: title,
                  textAlign: TextAlign.center,
                ),
              ),
              // sub title
              Padding(
                padding: PaddingSizedsUtility.vertical(
                  PaddingSizedsUtility.normalPaddingValue,
                ),
                child: BodyMediumBlackText(
                  text: subTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLoadingResponseWidget extends StatelessWidget {
  const CustomLoadingResponseWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingSizedsUtility.all(
        PaddingSizedsUtility.normalPaddingValue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // loading
            CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
            // title
            Padding(
              padding: PaddingSizedsUtility.top(
                PaddingSizedsUtility.hightPaddingValue,
              ),
              child: BodyMediumBlackBoldText(
                text: title,
                textAlign: TextAlign.center,
              ),
            ),
            // sub title
            Padding(
              padding: PaddingSizedsUtility.vertical(
                PaddingSizedsUtility.smallPaddingValue,
              ),
              child: BodyMediumBlackText(
                text: subTitle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
