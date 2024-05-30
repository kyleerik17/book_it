import 'package:flutter/material.dart';

class BottomNavBarReservPage extends StatefulWidget {
  const BottomNavBarReservPage({Key? key}) : super(key: key);

  @override
  _BottomNavBarReservPageState createState() => _BottomNavBarReservPageState();
}

class _BottomNavBarReservPageState extends State<BottomNavBarReservPage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Les résas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mon profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
