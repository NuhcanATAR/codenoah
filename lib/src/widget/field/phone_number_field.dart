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
// Description: Customizable phone number text form field widget.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class PhoneNumberFieldWidget extends StatefulWidget {
  const PhoneNumberFieldWidget({
    super.key,
    required this.phoneNumberController,
    required this.hintText,
    required this.onChanged,
    required this.isLabelText,
    required this.width,
    required this.languageOptions,
  });

  final TextEditingController phoneNumberController;
  final String hintText;
  final void Function(String)? onChanged;
  final bool isLabelText;
  final double width;
  final LanguageOptions languageOptions;

  @override
  State<PhoneNumberFieldWidget> createState() => _PhoneNumberFieldWidgetState();
}

class _PhoneNumberFieldWidgetState extends State<PhoneNumberFieldWidget> {
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // label text
        if (widget.isLabelText) buildLabelTextWidget,
        // phone number field
        buildPhoneNumberFieldWidget,
        // validator error
        if (errorText != null) buildValidatorErrorWidget,
      ],
    );
  }

  // label text
  Widget get buildLabelTextWidget => SizedBox(
        width: widget.width,
        child: Padding(
          padding: BaseUtility.vertical(BaseUtility.paddingNormalValue),
          child: BodyMediumBlackBoldText(
            text: widget.hintText,
            textAlign: TextAlign.left,
          ),
        ),
      );

  // phone number field
  Widget get buildPhoneNumberFieldWidget => Container(
        margin: BaseUtility.bottom(
          BaseUtility.paddingSmallValue,
        ),
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
                fontFamily: 'Nunito Regular',
                fontWeight: FontWeight.bold,
              ),
          controller: widget.phoneNumberController,
          validator: (String? value) {
            final result = CodeNoahValidator(
              value: value,
              context: context,
              languageOptions: widget.languageOptions,
            ).phoneNumberValidator(value);
            setState(() {
              errorText = result;
            });
            return result;
          },
          onChanged: widget.onChanged,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            errorStyle: const TextStyle(
              fontSize: 0.2,
            ),
            prefixIcon: Padding(
              padding: BaseUtility.all(
                BaseUtility.paddingNormalValue,
              ),
              child: const Icon(
                Icons.call_rounded,
                color: Colors.black54,
                size: BaseUtility.iconNormalSize,
              ),
            ),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontFamily: 'Popins Light',
                  fontWeight: FontWeight.w500,
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
