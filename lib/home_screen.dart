import 'package:flutter/material.dart';

// 두 번째 예제 : 메시지
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPosition = 0;
  static final List<Widget> _pages = [
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellowAccent,
    ),
  ];

  void _onTapped(int index) {
    setState(() {
      _currentPosition = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message"),
      ),
      body: _pages[_currentPosition],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPosition,
        selectedItemColor: Colors.redAccent,
        onTap: _onTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "카드1"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "카드2"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "카드3"),
        ],
      ),
    );
  }
}
