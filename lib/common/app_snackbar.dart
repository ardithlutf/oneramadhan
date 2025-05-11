import 'package:flutter/material.dart';
import 'package:oneramadhan/common/app_enums.dart';

class SimpleGlobalSnackBar {
  final String message;
  final TypeSnackbarEnum snackbarEnum;

  const SimpleGlobalSnackBar({
    required this.message,
    required this.snackbarEnum,
  });

  static show(
    BuildContext context,
    SnackBarBehavior behavior,
    String message,
    TypeSnackbarEnum snackbarEnum,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // showCloseIcon: true,
        backgroundColor: snackbarEnum == TypeSnackbarEnum.success
            ? const Color(0xFF163375)
            : Colors.red,
        elevation: 0.0,
        dismissDirection: DismissDirection.up,
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 150,
            left: 10,
            right: 10),
        behavior: SnackBarBehavior.floating,
        content: Text(message, maxLines: 3),
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
        // ),
        //backgroundColor: Colors.redAccent,
        // action: SnackBarAction(
        //   textColor: const Color(0xFFFAF2FB),
        //   label: 'OK',
        //   onPressed: () {
        //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
        //   },
        // ),
      ),
    );
  }
}
