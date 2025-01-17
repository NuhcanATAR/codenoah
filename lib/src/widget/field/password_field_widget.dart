// CODENOAH
// -----------------------------------
//   ####    #####   #####    #######  ##   ##   #####     ###     ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ###  ##  ### ###   ## ##    ##  ##
// ##       ##   ##   ##  ##   ##      #### ##  ##   ##  ##   ##   ##  ##
// ##       ##   ##   ##  ##   ####    #######  ##   ##  ##   ##   ######
// ##       ##   ##   ##  ##   ##      ## ####  ##   ##  #######   ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ##  ###  ### ###  ##   ##   ##  ##
//   ####    #####   #####    #######  ##   ##   #####   ##   ##   ##  ##
// -----------------------------------
// Publisher: Nuhcan ATAR
// LinkedIn: https://www.linkedin.com/in/nuhcan-atar-371276208/
// GitHub: https://github.com/NuhcanATAR
// E-mail: nuhcanatar20@gmail.com
// -----------------------------------
// Description: Customizable password text form field widget.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class CustomPasswordFieldWidget extends StatefulWidget {
  const CustomPasswordFieldWidget({
    super.key,
    required this.passwordController,
    required this.hintText,
    required this.onChanged,
    required this.isValidator,
    required this.isLabelText,
    required this.width,
    this.languageOptions,
  });

  // controller
  final TextEditingController passwordController;
  // text to be entered into field
  final String hintText;
  // function in case of click
  final Function(String)? onChanged;
  // verification check
  final bool isValidator;
  // Post for the top part of the field
  final bool isLabelText;
  // width for label text
  final double width;
  // language selection for error printing
  final LanguageOptions? languageOptions;

  @override
  State<CustomPasswordFieldWidget> createState() =>
      _CustomPasswordFieldWidgetState();
}

class _CustomPasswordFieldWidgetState extends State<CustomPasswordFieldWidget> {
  String? errorText;
  late bool isPassObscured = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // label text
        buildLabelTextWidget,
        // password field
        buildPasswordFieldWidget,
        // validator error
        if (errorText != null) buildValidatorErrorWidget,
      ],
    );
  }

  // label text
  Widget get buildLabelTextWidget => widget.isLabelText == true
      ? SizedBox(
          width: widget.width,
          child: Padding(
            padding: BaseUtility.vertical(
              BaseUtility.paddingNormalValue,
            ),
            child: BodyMediumBlackText(
              text: widget.hintText,
              textAlign: TextAlign.left,
            ),
          ),
        )
      : const SizedBox();

  // password field
  Widget get buildPasswordFieldWidget => Container(
        padding: BaseUtility.horizontal(BaseUtility.paddingNormalValue),
        margin: widget.isLabelText
            ? BaseUtility.bottom(BaseUtility.marginNormalValue)
            : BaseUtility.bottom(BaseUtility.paddingSmallValue),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            BaseUtility.radiusCircularMediumValue,
          ),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: TextFormField(
          obscureText: isPassObscured,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.scrim,
                fontWeight: FontWeight.bold,
              ),
          controller: widget.passwordController,
          keyboardType: TextInputType.visiblePassword,
          validator: widget.isValidator == true
              ? (String? value) {
                  final result = CodeNoahValidator(
                    value: value,
                    context: context,
                    languageOptions:
                        widget.languageOptions ?? LanguageOptions.english,
                  ).passwordCheck;
                  setState(() {
                    errorText = result;
                  });
                  return result;
                }
              : (String? value) => CodeNoahValidator(
                    value: value,
                    context: context,
                    languageOptions:
                        widget.languageOptions ?? LanguageOptions.english,
                  ).emptyNormalCheck,
          onChanged: widget.onChanged,
          // onChanged: (value) {
          //   setState(() {
          //     errorText = CustomValidator(value: value).passwordCheck;
          //   });
          // },
          decoration: InputDecoration(
            errorStyle: const TextStyle(
              fontSize: 0.2,
            ),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPassObscured = !isPassObscured;
                });
              },
              icon: isPassObscured == true
                  ? const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.black54,
                      size: BaseUtility.iconMediumSize,
                    )
                  : const Icon(
                      Icons.lock_open_rounded,
                      color: Colors.black54,
                      size: BaseUtility.iconMediumSize,
                    ),
            ),
            icon: const Icon(
              Icons.lock,
              color: Colors.black54,
              size: BaseUtility.iconNormalSize,
            ),
            filled: true,
            fillColor: Colors.transparent,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: BaseUtility.paddingNormalValue,
              vertical: BaseUtility.paddingSmallValue,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                RadiusExtension.circularMediumValue,
              ),
              borderSide: const BorderSide(
                color: Colors.transparent,
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
      );

  // validator error
  Widget get buildValidatorErrorWidget => Padding(
        padding: BaseUtility.vertical(
          BaseUtility.paddingMediumValue,
        ),
        child: Row(
          children: [
            Icon(
              Icons.warning_rounded,
              color: Theme.of(context).colorScheme.error,
              size: BaseUtility.iconMediumSize,
            ),
            Expanded(
              child: Padding(
                padding: BaseUtility.left(BaseUtility.paddingNormalValue),
                child: BodyMediumRedText(
                  text: errorText!,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      );
}
