import 'package:flutter/material.dart';
import 'package:flutter_app/ios_widgets.dart';

class ItemProfile extends StatelessWidget {
  const ItemProfile({required this.itemSelected, super.key});
  final int itemSelected;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("Item ${itemSelected + 1}"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red[500],
                  semanticLabel: "Hello red",
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const IOSWidget(),
                  ),
                ),
                tooltip: "Delete Item",
              ),
            ],
          ),
          body: Center(
            child: AboutDialog(
              applicationName: "Emergency App Hotline",
              applicationVersion: "1.0.0",
              applicationLegalese:
                  "Alright Reserved for future use and development purposes and to be used in further development applications on the application level.",
              applicationIcon: const Icon(
                Icons.apple,
                color: Colors.black,
              ),
              children: <Widget>[
                AboutListTile(
                  icon: Icon(
                    Icons.list_alt,
                    color: Colors.pink[200],
                  ),
                  applicationName: "About",
                  child: ListTile(
                    title: const Text("Hello world title"),
                    leading: Image.asset(
                      "images/galaxy.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
