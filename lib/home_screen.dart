import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs (adjusted to 4)
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Call'),
            ],
          ),
          actions: [
            const Icon(Icons.search, color: Colors.white),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 0,
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Settings"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Logout"),
                ),

              ],
              onSelected: (item) => {
                // Handle menu item clicks here
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.camera_alt),
            Center(child: Text('Chats Tab')),
            Center(child: Text('Status Tab')),
            Center(child: Text('Call Tab')),
          ],
        ),
      ),
    );
  }
}
