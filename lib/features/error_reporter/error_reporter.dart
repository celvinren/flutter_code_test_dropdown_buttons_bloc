import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ErrorReporterWrapper extends HookWidget {
  const ErrorReporterWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        FlutterError.onError = (FlutterErrorDetails details) {
          FlutterError.presentError(details);
          final error = details.exception;
          switch (error) {
            case DioException():
              debugPrint('DioException: ${error.message}');

            /// Can handle error here like pop dialog or show snackbar

            case Object:
              debugPrint('Object: $error');
            case Exception:
              debugPrint('Exception: $error');

            /// Add more other errors handling here
          }
        };
        return null;
      },
      [],
    );
    return child;
  }
}
