import 'package:codenoah/codenoah.dart';
import 'package:example/view/response_example/response_viewmodel.dart';
import 'package:example/view/response_example/view/one_response_view.dart';
import 'package:example/view/response_example/view/second_response_view.dart';
import 'package:flutter/material.dart';

class ResponseView extends StatefulWidget {
  const ResponseView({super.key});

  @override
  State<ResponseView> createState() => _ResponseViewState();
}

class _ResponseViewState extends ResponseViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Response Example"),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // response one
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'One Response',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const OneResponseView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // resposne second
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Second Response',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const SecondResponseView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
