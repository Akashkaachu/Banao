// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last

import 'package:banao/core/color/colors.dart';
import 'package:banao/core/sized_box/sized_box.dart';
import 'package:banao/util/refactory_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            Row(
              children: [
                const IconWidgets(icons: Icons.align_horizontal_left_outlined),
                const Spacer(),
                Container(
                  child: const Row(children: [
                    IconWidgets(
                      icons: Icons.forum_outlined,
                    ),
                    kWidth5,
                    IconWidgets(
                      icons: Icons.notifications_outlined,
                    ),
                  ]),
                )
              ],
            ),
            kHeight20,
            Text(
              "Hello,Priya !",
              style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text(
              "What do you wanna learn today?",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, color: kGrey),
            ),
            kHeight20,
            Row(
              children: [
                kWidth5,
                OulinedButtonWidgets(
                  onPressed: () {},
                  icon: Icons.book,
                  text: 'Programs',
                ),
                kWidth10,
                OulinedButtonWidgets(
                  onPressed: () {},
                  icon: Icons.help,
                  text: 'Get help',
                )
              ],
            ),
            kHeight20,
            Row(
              children: [
                kWidth5,
                OulinedButtonWidgets(
                  onPressed: () {},
                  icon: Icons.menu_book_outlined,
                  text: 'Learn',
                ),
                kWidth10,
                OulinedButtonWidgets(
                  onPressed: () {},
                  icon: Icons.insert_chart,
                  text: 'DD Tracker',
                )
              ],
            ),
            kHeight20,
            const CategoryNames(title: 'Programs for you', view: 'View all '),
            SizedBox(
              height: 265,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ContainerWidgets(
                      img: 'assets/images/mummy.png',
                      title: 'lifestyle',
                      content: 'A complete gude for your new born baby',
                      date: '13 feb, Sunday'),
                  kWidth10,
                  ContainerWidgets(
                      img: 'assets/images/yello.jpg',
                      title: 'lifestyle',
                      content: 'Understand the company policies ',
                      date: '13 feb, Sunday'),
                ],
              ),
            ),
            kHeight20,
            const CategoryNames(
                title: 'Events and experiences', view: 'View all '),
            SizedBox(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ContainerWidgets(
                      img: 'assets/images/image.png',
                      title: 'babycare',
                      content: 'Understading the human behaviour',
                      date: '13 feb, Sunday',
                      book: 'book'),
                  kWidth10,
                  ContainerWidgets(
                      img: 'assets/images/image.png',
                      title: 'babycare',
                      content: 'Understading the human behaviour',
                      date: '13 feb, Sunday',
                      book: 'book'),
                ],
              ),
            ),
            kHeight20,
            const CategoryNames(title: 'Lesson for you', view: 'View all '),
            SizedBox(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ContainerWidgets(
                      img: 'assets/images/image.png',
                      title: 'babycare',
                      content: 'Understading the human behaviour',
                      date: '13 feb, Sunday',
                      isLock: Icons.lock),
                  kWidth10,
                  ContainerWidgets(
                      img: 'assets/images/image.png',
                      title: 'babycare',
                      content: 'Understading the human behaviour',
                      date: '13 feb, Sunday',
                      isLock: Icons.lock),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
