import 'package:flutter/cupertino.dart';

import '../../src.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CupertinoActivityIndicator(
      color: AppColors.redColor,
      radius: 10,
    ));
  }
}
