import 'package:flutter/cupertino.dart';

class IOSWidget extends StatelessWidget {
  const IOSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Deleting Item"),
        padding: EdgeInsetsDirectional.all(10.0),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CupertinoButton(
              onPressed: null,
              child: Text("Disable Button"),
            ),
            CupertinoButton(
              onPressed: () => debugPrint("Hello World!"),
              child: const Text("Enabled Button"),
            ),
            CupertinoButton.filled(
              onPressed: () => debugPrint("Hello World!"),
              child: const Text("Filled button"),
            )
          ],
        ),
      ),
    );
  }
}
