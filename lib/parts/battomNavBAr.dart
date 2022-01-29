import 'package:flutter/material.dart';

class battomnavBar extends StatefulWidget {
  const battomnavBar({Key? key}) : super(key: key);

  @override
  _battomnavBarState createState() => _battomnavBarState();
}

class _battomnavBarState extends State<battomnavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'profile',
          ),
        ],
        //type: BottomNavigationBarType.shifting,
        currentIndex: 1,
        selectedItemColor: Colors.amber.shade900,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        //iconSize: 12,
        //onTap: _onItemTap,
        elevation: 5);
  }
}
