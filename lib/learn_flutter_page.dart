import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool switcherEnabled = false;
  bool? isChecked = false;

  Color helloWorldOneBg = Colors.blueGrey;

  Text createText(String message, Color? color, FontWeight fWeight) => Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: fWeight,
          color: color,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset("images/galaxy.png"),
          const Divider(color: Colors.black),
          Container(
            color: switcherEnabled ? Colors.black : Colors.blueGrey,
            width: double.infinity,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            child:
                createText("Hello World One", Colors.white, FontWeight.normal),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("Elevated button clicked");
            },
            child: createText("Hello World Two", Colors.white, FontWeight.bold),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("Outlined button clicked");
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: createText(
                  "Hello World Three", Colors.yellowAccent, FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              debugPrint("Text button clicked");
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child:
                  createText("Hello World Four", Colors.black, FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () => debugPrint("Gesture detector tapped"),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.linked_camera,
                  fill: BorderSide.strokeAlignCenter,
                ),
                Icon(Icons.post_add),
                Icon(Icons.fire_extinguisher),
              ],
            ),
          ),
          Switch(
              value: switcherEnabled,
              onChanged: (bool isOn) => setState(() {
                    switcherEnabled = isOn;
                  })),
          Checkbox(
              value: isChecked,
              onChanged: (bool? checkState) {
                setState(() {
                  isChecked = checkState;
                });
              }),
        ],
      ),
    );
    // 49:35
  }
}
