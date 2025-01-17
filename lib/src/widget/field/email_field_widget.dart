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
// Description: Customizable email text form field widget.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class CustomEmailFieldWidget extends StatefulWidget {
  const CustomEmailFieldWidget({
    super.key,
    required this.emailController,
    required this.hintText,
    required this.onChanged,
    required this.isLabelText,
    this.languageOptions,
  });

  // controller
  final TextEditingController emailController;
  // text entered into field
  final String hintText;
  // function in case of click
  final Function(String)? onChanged;
  // text at the top of the field
  final bool isLabelText;
  // language selection for error printing
  final LanguageOptions? languageOptions;

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
        if (widget.isLabelText) buildLabelTextWidget,
        // email field
        buildEmailFieldWidget,
        // validator error
        if (errorText != null) buildValidatorErrorWidget,
      ],
    );
  }

  // label text
  Widget get buildLabelTextWidget => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: BaseUtility.vertical(BaseUtility.paddingNormalValue),
          child: BodyMediumBlackBoldText(
            text: widget.hintText,
            textAlign: TextAlign.left,
          ),
        ),
      );

  // email field
  Widget get buildEmailFieldWidget => Container(
        padding: BaseUtility.horizontal(BaseUtility.paddingNormalValue),
        margin: widget.isLabelText
            ? const EdgeInsets.only(bottom: BaseUtility.marginNormalValue)
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
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.scrim,
                fontFamily: 'Popins Light',
                fontWeight: FontWeight.bold,
              ),
          controller: widget.emailController,
          validator: (String? value) {
            final result = CodeNoahValidator(
              value: value,
              context: context,
              languageOptions:
                  widget.languageOptions ?? LanguageOptions.english,
            ).emailCheck;
            setState(() {
              errorText = result;
            });
            return result;
          },
          onChanged: widget.onChanged,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            errorStyle: const TextStyle(
              fontSize: 0.2,
            ),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            icon: const Icon(
              Icons.mail_outline_rounded,
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
                BaseUtility.radiusCircularMediumValue,
              ),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                BaseUtility.radiusCircularMediumValue,
              ),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                BaseUtility.radiusCircularMediumValue,
              ),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                BaseUtility.radiusCircularMediumValue,
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
        padding: BaseUtility.all(BaseUtility.paddingMediumValue),
        child: Row(
          children: [
            Icon(
              Icons.warning_rounded,
              color: Theme.of(context).colorScheme.error,
              size: BaseUtility.iconNormalSize,
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
