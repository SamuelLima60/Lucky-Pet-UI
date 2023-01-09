import 'package:flutter/material.dart';
import 'package:luckypetui/widgets/card_pets_widget.dart';
import 'package:luckypetui/widgets/welcome_message_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home_bottom.png',
              height: 30,
              width: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/shop_bottom.png',
              height: 30,
              width: 30,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profile_bottom.png',
              height: 30,
              width: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      backgroundColor: const Color(0xE8F2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/menu.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/profile.png'),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: WelcomeMessageWidget(),
                ),
                const Text(
                  'Dogs',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (ctx, index) {
                      return const CardPets();
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Cats',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (ctx, index) {
                      return const CardPets();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
