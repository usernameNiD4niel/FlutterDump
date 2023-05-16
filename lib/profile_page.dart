import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => ListTile(
        textColor: Colors.green,
        title: Text("item ${index + 1}"),
        trailing: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ITjX_c8woYpfgRt1nOtnF4D8Aw0Ozocq3ABN1-Lw&s"),
        subtitle: const Text("This is a sub title"),
        onTap: () => debugPrint("item ${index + 1} has been selected"),
      ),
    );
  }
}
