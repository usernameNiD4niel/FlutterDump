import 'package:flutter/material.dart';
import 'package:flutter_app/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Text displayText(String text) => Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        );

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LearnFlutterPage();
                    },
                  ),
                );
              },
              child: const Text("Learn Flutter"),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("Action Chip"),
            ActionChip(
              label: const Text("Action Chip"),
              avatar: const Icon(
                Icons.android,
                color: Colors.green,
              ),
              tooltip: "action chip",
              onPressed: () => debugPrint("action chip pressed"),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("Alert Dialog"),
            AlertDialog(
              icon: const Icon(Icons.precision_manufacturing),
              title: displayText("alert dialog title"),
              titleTextStyle:
                  const TextStyle(fontFamily: "Helvetica", fontSize: 9),
              content: Image.network(
                  "https://occ-0-2794-38.1.nflxso.net/dnm/api/v6/9pS1daC2n6UGc3dUogvWIPMR_OU/AAAABYvpIoehxFBM8-xrn2ALzsRSsBxqLPtv8PWlEmX_rvfbeKo_qc2Wp1UW2vUdjahkU5skCu6MeFvU3fvUFb4XK2t6R55p_NW6mJL6xA3ev8r1BNH1AMvyZes3.jpg?r=a4d"),
              actions: const [
                Icon(Icons.percent),
                Icon(Icons.flag_circle_rounded),
                Icon(Icons.phishing_outlined)
              ],
              titlePadding: const EdgeInsets.all(10.0),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("Back Button"),
            BackButton(
              onPressed: () => debugPrint("back button pressed"),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("Close Button"),
            CloseButton(
              onPressed: () => debugPrint("close button pressed"),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("Colored Box"),
            ColoredBox(
              color: Colors.amber,
              child: ListTile(
                title: displayText("Hello sample with color"),
                subtitle: displayText("Sample sub title with color"),
                trailing: const Icon(Icons.ac_unit_outlined),
                style: ListTileStyle.drawer,
              ),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("Card"),
            Card(
              color: Colors.blue[400],
              shadowColor: Colors.yellow,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: const Text(
                "Hello World!",
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.amber),
            displayText("List View"),
          ],
        ),
      ),
    );
  }
}
