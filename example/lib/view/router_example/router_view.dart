import 'package:codenoah/codenoah.dart';
import 'package:example/view/router_example/router_viewmodel.dart';
import 'package:example/view/router_example/view/test_view.dart';
import 'package:flutter/material.dart';

class RouterView extends StatefulWidget {
  const RouterView({super.key});

  @override
  State<RouterView> createState() => _RouterViewState();
}

class _RouterViewState extends RouterViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Router Example',
        ),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // from left to right
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'From Left to Right',
                func: () {
                  CodeNoahNavigatorRouter.push(
                    context,
                    const TestRouterView(),
                    direction: SlideDirection.leftToRight,
                  );
                },
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // right to left
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'From Right to Left',
                func: () {
                  CodeNoahNavigatorRouter.push(
                    context,
                    const TestRouterView(),
                    direction: SlideDirection.rightToLeft,
                  );
                },
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // top down
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'From Top to Down',
                func: () {
                  CodeNoahNavigatorRouter.push(
                    context,
                    const TestRouterView(),
                    direction: SlideDirection.topToBottom,
                  );
                },
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // bottom up
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'From Bottom to Up',
                func: () {
                  CodeNoahNavigatorRouter.push(
                    context,
                    const TestRouterView(),
                    direction: SlideDirection.bottomToTop,
                  );
                },
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // normal
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Normal',
                func: () {
                  CodeNoahNavigatorRouter.push(
                    context,
                    const TestRouterView(),
                  );
                },
                btnStatus: ButtonTypes.primaryColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
