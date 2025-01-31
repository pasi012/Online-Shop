
// ignore_for_file: file_names


import 'package:bagisto_app_demo/screens/cart_screen/cart_index.dart';

class NoDataFound extends StatelessWidget {
  const NoDataFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            StringConstants.processWaitingMsg.localized(),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
