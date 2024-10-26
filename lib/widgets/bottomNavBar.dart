import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Bottom Nav Bar"),
      body: PageView(
        controller: pageController,
        children: [
          Center(
            child: Text("Page-1",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text("Page-2",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text("Page-3",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text("Page-4",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        elevation: 8,
        iconSize: 35,
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        onTap: onTapped,
      ),
    );
  }
}