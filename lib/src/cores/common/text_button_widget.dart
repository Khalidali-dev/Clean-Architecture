import '../../src.dart';
class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key,
      this.width,
      this.height,
      required this.press,
      required this.child,
      this.borderRadius,
      this.padding});
  final double? width, height;
  final Function()? press;
  final Widget child;
  final double? padding;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
          textStyle: Theme.of(context).textTheme.titleMedium,
          minimumSize:
              Size(width ?? double.infinity, height ?? double.infinity),
          padding: EdgeInsets.all(padding ?? 0),
          overlayColor: Colors.teal,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10))),
      child: child,
    );
  }
}
