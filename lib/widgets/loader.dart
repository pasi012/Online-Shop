
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final String? loadingMessage;

  const Loader({Key? key, this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            loadingMessage ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          if ((loadingMessage ?? "").isNotEmpty) const SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
