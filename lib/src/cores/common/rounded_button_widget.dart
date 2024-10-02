import '../../src.dart';

class RoundedButtonWidget extends StatelessWidget {
  const RoundedButtonWidget(
      {super.key,
      required this.press,
      required this.title,
      this.bg = AppColors.redColor,
      this.loading = APIStatus.initial});
  final VoidCallback press;
  final String title;
  final APIStatus loading;
  final Color bg;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: bg,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: loading == APIStatus.loading ? null : press,
      child: loading == APIStatus.loading
          ? const SizedBox(width: 50, child: LoadingWidget())
          : Text(title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white)),
    );
  }
}
