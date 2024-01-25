import 'package:basic_app/drawer_page/coffee_page.dart';
import 'package:basic_app/drawer_page/cookie_page.dart';
import 'package:basic_app/navigation_page/companies_page.dart';
import 'package:basic_app/navigation_page/home_page.dart';
import 'package:basic_app/navigation_page/school_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstPage(),
      routes: {
        '/coffeepage': (context) => const CoffeePage(),
        '/cookiepage': (context) => const CookiePage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const HomePage(),
    const CompaniesPage(),
    const SchoolPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('flutter is fun'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Companies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.local_dining,
                size: 50,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.cookie),
              title: const Text('Cookie'),
              onTap: () {
                Navigator.pushNamed(context, '/cookiepage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.coffee),
              title: const Text('Coffee'),
              onTap: () {
                Navigator.pushNamed(context, '/coffeepage');
              },
            )
          ],
        ),
      ),
    );
  }
}