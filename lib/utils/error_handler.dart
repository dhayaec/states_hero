import 'package:flutter/material.dart';

import 'package:states_hero/utils/exceptions.dart';

class ErrorHandler {
  static String errorMessage(dynamic error) {
    if (error == null) {
      return null;
    }

    if (error is ProductsFetchError) {
      return error.message;
    }

    if (error is ProductSaveError) {
      return error.message;
    }
    // throw unexpected error.
    throw error;
  }

  static void showErrorDialog(BuildContext context, dynamic error) {
    if (error == null) {
      return;
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(errorMessage(error)),
        );
      },
    );
  }

  static void showSnackBar(BuildContext context, dynamic error) {
    if (error == null) {
      return;
    }
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('${errorMessage(error)}'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
