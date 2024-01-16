import 'package:cipherschools_flutter_assignment/screens/budget_page.dart';
import 'package:cipherschools_flutter_assignment/screens/expenses_screen.dart';
import 'package:cipherschools_flutter_assignment/screens/home_screen.dart';
import 'package:cipherschools_flutter_assignment/screens/profile_screen.dart';
import 'package:cipherschools_flutter_assignment/screens/transaction_page.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int selectedIndex = 0; // Track the selected index

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        physics: BouncingScrollPhysics(),
        children: [
          HomeScreen(),
          TransactionPage(),
          BudgetScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBottomBarItem(Icons.home_filled, 'Home', 0),
              buildBottomBarItem(Icons.cached_sharp, 'Transaction', 1),
              SizedBox(width: 20.0),
              buildBottomBarItem(Icons.pie_chart_sharp, 'Budget', 2),
              buildBottomBarItem(Icons.account_circle_sharp, 'Profile', 3),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => expenseScreen()),
          );
        },
        shape: CircleBorder(),
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }

  Widget buildBottomBarItem(IconData icon, String label, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: selectedIndex == index ? Colors.red : Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(icon, color: selectedIndex == index ? Colors.white : Colors.black),
              ),
            ),
            SizedBox(height: 0.5),
            Text(label, style: TextStyle(color: selectedIndex == index ? Colors.red : Colors.black)),
          ],
        ),
      ),
    );
  }
}