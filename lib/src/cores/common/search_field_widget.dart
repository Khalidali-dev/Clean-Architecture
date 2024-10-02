import 'package:flutter/cupertino.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    required this.onChanged,
    required this.search,
    this.barcodeController,
    this.isBarcode = false,
  });
  final Function(dynamic) onChanged;
  final String search;
  final TextEditingController? barcodeController;
  final bool isBarcode;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // final locale = AppLocalizations.of(context)!;

    return SizedBox(
      width: size.width * .15,
      child: CupertinoSearchTextField(
        controller: barcodeController,
        // placeholder: '${locale.search} $search',
        prefixIcon: const Icon(
          CupertinoIcons.search,
          // color: themeColorManager(context),
        ),
        onChanged: onChanged,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
