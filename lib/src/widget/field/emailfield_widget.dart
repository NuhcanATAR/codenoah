import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class CustomEmailFieldWidget extends StatefulWidget {
  const CustomEmailFieldWidget({
    super.key,
    required this.emailController,
    required this.hintText,
    required this.onChanged,
    required this.isLabelText,
    required this.width,
  });

  final double width;
  final TextEditingController emailController;
  final String hintText;
  final Function(String)? onChanged;
  final bool isLabelText;

  @override
  State<CustomEmailFieldWidget> createState() => _CustomEmailFieldWidgetState();
}

class _CustomEmailFieldWidgetState extends State<CustomEmailFieldWidget> {
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // email field
        widget.isLabelText == true
            ? SizedBox(
                width: widget.width,
                child: Padding(
                  padding: PaddingSizedsUtility.vertical(
                    PaddingSizedsUtility.normalPaddingValue,
                  ),
                  child: BodyMediumBlackText(
                    text: widget.hintText,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            : const SizedBox(),
        Container(
          margin: widget.isLabelText == true
              ? EdgeInsets.only(
                  left: MarginSizedsUtility.normalMarginValue,
                  bottom: MarginSizedsUtility.smallMarginValue,
                )
              : PaddingSizedsUtility.bottom(
                  PaddingSizedsUtility.smallPaddingValue,
                ),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontFamily: 'Popins Light',
                  fontWeight: FontWeight.bold,
                ),
            controller: widget.emailController,
            validator: (String? value) =>
                CodeNoahValidator(value: value, context: context).emailCheck,
            onChanged: widget.onChanged,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
              icon: AppIcons.mailFill.toSvgImg(
                Colors.black,
                IconSizedExtension.normalSize,
                IconSizedExtension.normalSize,
              ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: EdgeInsets.symmetric(
                horizontal: PaddingSizedsUtility.normalPaddingValue,
                vertical: PaddingSizedsUtility.smallPaddingValue,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),

        // validator error
        if (errorText != null)
          Padding(
            padding: PaddingSizedsUtility.vertical(
              PaddingSizedsUtility.mediumPaddingValue,
            ),
            child: Row(
              children: [
                AppIcons.warningCircle.toSvgImg(
                  Theme.of(context).colorScheme.error,
                  IconSizedExtension.smallSize,
                  IconSizedExtension.smallSize,
                ),
                Expanded(
                  child: Padding(
                    padding: PaddingSizedsUtility.left(
                      PaddingSizedsUtility.smallPaddingValue,
                    ),
                    child: BodyMediumRedText(
                      text: errorText!,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
