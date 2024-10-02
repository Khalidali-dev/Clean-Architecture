import '../../src.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    splashService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final locale = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(Images.logo),
            ),
            height(40),
            // ColorizeTextWidget(
            //   texts: [locale.ownerName],
            //   textStyle: const TextStyle(
            //     fontSize: 50.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ],
        ),
      )),
    );
  }

  splashService() {
    Future.delayed(const Duration(seconds: 3), () async {
      final token = await SharePreferences.getString("token");

      if (token != null && !JWTDecoder.isTokenExpired(token)) {
        navigateName(route: RouteName.internetConnection, context: context);
      } else {
        // ignore: use_build_context_synchronously
        navigateName(route: RouteName.login, context: context);
      }
    });
  }
}
