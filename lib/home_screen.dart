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
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Icon(Icons.camera_alt,color: Colors.white,),
              Tab(text: 'Chats', ),
              Tab(text: 'Status'),
              Tab(text: 'Call'),
            ],
          ),
          actions:[
            Icon(Icons.search, color: Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert_outlined, color: Colors.white,),
            SizedBox(width: 10,),
          ]
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt,),
            Center(child: Text('Chats Tab')),
            Center(child: Text('Status Tab')),
            Center(child: Text('Call Tab')),
          ],
        ),
      ),
    );
  }
}
