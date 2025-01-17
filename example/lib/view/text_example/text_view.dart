import 'package:codenoah/codenoah.dart';
import 'package:example/view/text_example/text_viewmodel.dart';
import 'package:flutter/material.dart';

class TextView extends StatefulWidget {
  const TextView({super.key});

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends TextViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Example"),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: ListView(
          children: <Widget>[
            // label medium
            Column(
              children: <Widget>[
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const LabelMediumBlackText(
                    text: 'Label Medium Text Widget',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const LabelMediumMainColorText(
                    text: 'Label Medium Main Color Text',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            // body medium
            Column(
              children: <Widget>[
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumBlackBoldText(
                    text: 'Body Medium Black Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumBlackText(
                    text: 'Body Medium Black Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumBlueBoldText(
                    text: 'Body Medium Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumMainColorText(
                    text: 'Body Medium Color Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumMainColorBoldText(
                    text: 'Body Medium Color Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumRedText(
                    text: 'Body Medium Red Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const BodyMediumRedBoldText(
                    text: 'Body Medium Red Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            // title medium
            Column(
              children: <Widget>[
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const TitleMediumBlackBoldText(
                    text: 'Title Medium Black Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const TitleMediumBlackText(
                    text: 'Title Medium Black Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const TitleMediumMainColorText(
                    text: 'Title Medium Main Color Text',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            // title large
            Column(
              children: <Widget>[
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const TitleLargeBlackBoldText(
                    text: 'Title Large Black Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const TitleLargeBlackText(
                    text: 'Title Large Black Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: BaseUtility.vertical(
                    BaseUtility.paddingMediumValue,
                  ),
                  child: const TitleLargeMainColorBoldText(
                    text: 'Title Large Main Color Bold Text',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
