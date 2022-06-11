import 'package:bmi/Screens/ArchivedScreen.dart';
import 'package:bmi/Screens/DoneScreen.dart';
import 'package:bmi/Screens/ToDoScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIdext = 0;
  List<String> titles = ['ToDo Tasks', 'Done Tasks', 'New Tasks'];
  List<Widget> screens = [ToDoScreen(), DoneScreen(), ArchivedScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[_currentIdext])),
      body: screens[_currentIdext],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIdext,
          onTap: (index) {
            setState(() {
              _currentIdext = index;
            });
          },
          items: const [
            BottomNavigationBarItem(label: 'Tasks', icon: Icon(Icons.menu)),
            BottomNavigationBarItem(
              label: 'Done',
              icon: Icon(Icons.check_circle_outline),
            ),
            BottomNavigationBarItem(
                label: 'Archived', icon: Icon(Icons.archive_outlined)),
          ]),
    );
  }
}
