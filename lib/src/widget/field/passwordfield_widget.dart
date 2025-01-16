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
  });

  final TextEditingController passwordController;
  final String hintText;
  final Function(String)? onChanged;
  final bool isValidator;
  final bool isLabelText;
  final double width;

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
        widget.isLabelText == true
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
            : const SizedBox(),
        Container(
          margin: widget.isLabelText == true
              ? const EdgeInsets.only(
                  left: BaseUtility.marginNormalValue,
                  bottom: BaseUtility.marginSmallValue,
                )
              : BaseUtility.bottom(
                  BaseUtility.marginSmallValue,
                ),
          child: TextFormField(
            obscureText: isPassObscured,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontWeight: FontWeight.bold,
                ),
            controller: widget.passwordController,

            validator: widget.isValidator == true
                ? (String? value) =>
                    CodeNoahValidator(value: value, context: context)
                        .passwordCheck
                : (String? value) =>
                    CodeNoahValidator(value: value, context: context)
                        .emptyNormalCheck,
            onChanged: widget.onChanged,
            // onChanged: (value) {
            //   setState(() {
            //     errorText = CustomValidator(value: value).passwordCheck;
            //   });
            // },
            decoration: InputDecoration(
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
                        color: Colors.black,
                        size: BaseUtility.iconNormalSize,
                      )
                    : const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.black,
                        size: BaseUtility.iconNormalSize,
                      ),
              ),
              icon: const Icon(
                Icons.lock,
                color: Colors.black,
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
        ),
        // validator error
        if (errorText != null)
          Padding(
            padding: BaseUtility.vertical(
              BaseUtility.paddingMediumValue,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.warning_rounded,
                  color: Theme.of(context).colorScheme.error,
                  size: BaseUtility.iconNormalSize,
                ),
                Expanded(
                  child: Padding(
                    padding: BaseUtility.left(
                      BaseUtility.paddingSmallValue,
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
