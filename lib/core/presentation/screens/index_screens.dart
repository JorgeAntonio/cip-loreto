import 'package:cip_loreto/core/navigation/app_bottom_navigation.dart';
import 'package:cip_loreto/core/presentation/screens/home/home_screen.dart';
import 'package:cip_loreto/core/presentation/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  final int pageIndex;
  final ValueChanged<int> onPageChanged;
  const IndexScreen({
    super.key,
    required this.pageIndex,
    required this.onPageChanged,
  });

  @override
  State<IndexScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<IndexScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    widget.onPageChanged(index);
    _pageController.jumpToPage(
      index,
    );
  }

  final viewRoutes = const <Widget>[
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: widget.onPageChanged,
        children: viewRoutes,
      ),
      bottomNavigationBar: AppBottomNavigation(
        currentIndex: widget.pageIndex,
        onDestinationSelected: _onItemTapped,
      ),
    );
  }
}
