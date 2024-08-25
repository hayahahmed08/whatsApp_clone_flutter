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
      length: 4, // Number of tabs
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
              onSelected: (item) {
                // Handle menu item clicks here
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            const Icon(Icons.camera_alt), // Camera Tab
            // Chats Tab
            ListView.builder(
              itemCount: 20, // Adjust this to the number of chat items
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Im developing a Flutter based WhatsApp UI'),
                  trailing: Text("3:45 PM"),
                );
              },
            ),
            // Status Tab
            ListView.builder(
              itemCount: 10, // Adjust this to the number of status items
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Today, 3:45 PM'),
                );
              },
            ),
            // Calls Tab
            ListView.builder(
              itemCount: 15, // Adjust this to the number of call items
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.call, color: Colors.white),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Incoming | Today, 3:45 PM'),
                  trailing: Icon(Icons.call_made, color: Colors.green),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
