import '../../src.dart';

class InternetExceptionWidget extends StatelessWidget {
  const InternetExceptionWidget({super.key, required this.press});
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.cloud_off,
          size: 50,
          color: Colors.red,
        ),
        Text(
          'No internet connection.\nPlease check your network settings.',
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 20),
        ),
        height(10),
        RoundedButtonWidget(press: press, title: "Retry")
      ],
    );
  }
}
