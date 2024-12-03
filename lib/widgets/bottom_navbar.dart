import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;

  const BottomNavbar({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue[800],
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/h');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/b');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/t');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/a');
            break;
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Bioskop'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_activity), label: 'Tiket'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_movies), label: 'Tiketku'),
      ],
    );
  }
}
