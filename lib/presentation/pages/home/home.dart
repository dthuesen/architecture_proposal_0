import 'package:architecture_proposal_0/presentation/screens/overview_screen.dart';
import 'package:architecture_proposal_0/presentation/screens/posts/posts_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Map<String, Widget>> _screens = [
    {
      'title': Text('Simple Clean Architecture Demo'),
      'child': OverviewScreen(),
    },
    {
      'title': Text('Posts List'),
      'child': PostsScreen(),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _screens.elementAt(_selectedIndex)['title']!,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _screens.elementAt(_selectedIndex)['child']!,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.markunread_mailbox_outlined),
            label: 'Posts',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
