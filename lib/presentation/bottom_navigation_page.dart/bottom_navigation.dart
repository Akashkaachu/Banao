import 'package:banao/presentation/chat/chat_screen.dart';
import 'package:banao/presentation/home/home_screen.dart';
import 'package:banao/presentation/hub/hub_screen.dart';
import 'package:banao/presentation/learn/learn_screen.dart';
import 'package:banao/presentation/profile/profile_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({super.key});
  final ValueNotifier chageIndexNotifier = ValueNotifier(0);
  final pages = [
    const HomeScreenPage(),
    const LearnScreen(),
    const HubScreenPage(),
    const ChatScreenPage(),
    const ProfileScreenPage()
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: chageIndexNotifier,
        builder: (context, index, child) {
          // ignore: avoid_unnecessary_containers
          return Container(
            child: Scaffold(
              body: pages[index],
              bottomNavigationBar: FlashyTabBar(
                animationDuration: const Duration(milliseconds: 1300),
                selectedIndex: chageIndexNotifier.value,
                iconSize: 30.0,
                showElevation: true,
                onItemSelected: (index) {
                  chageIndexNotifier.value = index;
                },
                items: [
                  FlashyTabBarItem(
                      icon: const Icon(Icons.home), title: const Text("Home")),
                  FlashyTabBarItem(
                      icon: const Icon(Icons.menu_book_outlined),
                      title: const Text("Learn")),
                  FlashyTabBarItem(
                      icon: const Icon(CupertinoIcons.circle_grid_3x3),
                      title: const Text("Hub")),
                  FlashyTabBarItem(
                      icon: const Icon(CupertinoIcons.chat_bubble),
                      title: const Text("Chat")),
                  FlashyTabBarItem(
                    icon: const Column(
                      children: [
                        SizedBox(height: 15),
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                      ],
                    ),
                    title: const Text("Profile"),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
