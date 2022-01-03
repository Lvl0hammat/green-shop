import 'package:envio/constants.dart';
import 'package:envio/screens/home/components/body.dart';
import 'package:envio/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Widget> _pages = [Body(), SplashScreen()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'خانه',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: 'جست و جو'),
          ],
          type: BottomNavigationBarType.shifting,
          unselectedFontSize: 16,
          selectedFontSize: 20,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kCommentColor,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'vazir'),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
          iconSize: 33,
        ),
      ),
    );
  }
}
