import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.width,
    this.height,
    required this.text,
    required this.func,
    required this.btnStatus,
  });

  final double? width;
  final double? height;

  final String text;
  final Function()? func;
  final ButtonTypes btnStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingSizedsUtility.top(
        PaddingSizedsUtility.normalPaddingValue,
      ),
      child: GestureDetector(
        onTap: func,
        child: SizedBox(
          width: width,
          height: height ??
              ViewSizeValueModelExtension(context).dynamicHeight(
                context,
                0.06,
              ),
          child: Container(
            padding: PaddingSizedsUtility.horizontal(
              PaddingSizedsUtility.normalPaddingValue,
            ),
            alignment: Alignment.center,
            decoration: btnStatus.buttonTypeValue ==
                    ButtonTypes.primaryColorButton.buttonTypeValue
                ? BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        RadiusExtension.circularMediumValue,
                      ),
                    ),
                  )
                : btnStatus.buttonTypeValue ==
                        ButtonTypes.iconPrimaryColorButton.buttonTypeValue
                    ? BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            RadiusExtension.circularMediumValue,
                          ),
                        ),
                      )
                    : btnStatus.buttonTypeValue ==
                            ButtonTypes.borderPrimaryColorButton.buttonTypeValue
                        ? BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                RadiusExtension.circularMediumValue,
                              ),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.error,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                RadiusExtension.circularMediumValue,
                              ),
                            ),
                          ),
            child: btnStatus.buttonTypeValue ==
                    ButtonTypes.primaryColorButton.buttonTypeValue
                ? BodyMediumWhiteText(
                    text: text,
                    textAlign: TextAlign.center,
                  )
                : btnStatus.buttonTypeValue ==
                        ButtonTypes.iconPrimaryColorButton.buttonTypeValue
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AppIcons.add.toSvgImg(
                            Colors.white,
                            IconSizedExtension.normalSize,
                            IconSizedExtension.normalSize,
                          ),
                          Expanded(
                            child: BodyMediumWhiteText(
                              text: text,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : btnStatus.buttonTypeValue ==
                            ButtonTypes.borderPrimaryColorButton.buttonTypeValue
                        ? BodyMediumMainColorText(
                            text: text,
                            textAlign: TextAlign.center,
                          )
                        : BodyMediumRedText(
                            text: text,
                            textAlign: TextAlign.center,
                          ),
          ),
        ),
      ),
    );
  }
}
