import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(209, 50, 16, 145),
        actions: [
          PopupMenuButton<String>(
              clipBehavior: Clip.hardEdge,
              tooltip: 'Menu',
              icon: Icon(Icons.menu),
              onSelected: (String r) {
                switch (r) {
                  case 'Logout':
                    print("Logged Out");
                    break;
                }
              },
              iconColor: Colors.white,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem(
                        value: 'Logout',
                        child: Row(
                          children: [
                            Icon(Icons.exit_to_app_rounded),
                            Text("Logout")
                          ],
                        )),
                    PopupMenuItem(child: Text("setting"))
                  ])
        ],
      ),
    );
  }
}
