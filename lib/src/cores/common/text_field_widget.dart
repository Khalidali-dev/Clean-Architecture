import '../../src.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      this.controller,
      required this.label,
      required this.hintText,
      this.isSecureText,
      this.onChanged,
      this.validator,
      this.suffixIcon,
      this.textInputType,
      this.focusNode,
      this.onFieldSubmitted,
      this.readOnly = false,
      this.formatter});
  final TextEditingController? controller;
  final String label, hintText;
  final bool? isSecureText;

  final ValueChanged<String>? onChanged, onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final TextInputFormatter? formatter;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      controller: controller,
      readOnly: readOnly,
      focusNode: focusNode,
      inputFormatters: [
        formatter ?? FilteringTextInputFormatter.singleLineFormatter,
      ],
      keyboardType: textInputType ?? TextInputType.name,
      cursorColor: AppColors.redColor,
      obscureText: isSecureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        labelStyle: Theme.of(context).textTheme.titleMedium,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        enabled: true,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.red)),
        suffixIcon: suffixIcon ?? const SizedBox(),
      ),
    );
  }
}
