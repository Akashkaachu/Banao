// ignore_for_file: sort_child_properties_last

import 'package:banao/core/color/colors.dart';
import 'package:banao/core/sized_box/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IconWidgets extends StatelessWidget {
  const IconWidgets({
    super.key,
    required this.icons,
  });
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icons,
      color: kGrey,
    );
  }
}

//====================
class OulinedButtonWidgets extends StatelessWidget {
  const OulinedButtonWidgets({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });
  final IconData icon;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
        ),
        child: Row(children: [Icon(icon), kWidth5, Text(text)]),
      ),
    );
  }
}

//=========================================
class CategoryNames extends StatelessWidget {
  const CategoryNames({
    super.key,
    required this.title,
    required this.view,
  });
  final String title;
  final String view;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  view,
                  style: GoogleFonts.poppins(color: kGrey),
                ),
                const Icon(
                  Icons.trending_flat,
                  color: kGrey,
                )
              ],
            ))
      ],
    );
  }
}

//=============================================
class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets(
      {super.key,
      required this.img,
      required this.title,
      required this.content,
      required this.date,
      this.onPressed,
      this.book,
      this.isLock});
  final String img;
  final String title;
  final String content;
  final String date;
  final String? book;
  final IconData? isLock;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 255,
              child: Container(
                width: 250,
                child: Column(children: [
                  Container(
                    height: 130,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              img,
                            )),
                        color: kWhite,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                  )
                ]),
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(10)),
              ),
            ),
            kHeight5,
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toUpperCase(),
                    style: GoogleFonts.poppins(color: kblue),
                  ),
                  kHeight5,
                  Text(
                    content,
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  kHeight5,
                  Row(
                    children: [
                      Text(
                        date,
                        style: GoogleFonts.poppins(color: kGrey),
                      ),
                      const Spacer(),
                      SizedBox(
                        child: book == null
                            ? isLock == null
                                ? null
                                : Icon(
                                    isLock,
                                    color: kGrey,
                                  )
                            : OutlinedButton(
                                onPressed: onPressed,
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                    const BorderSide(color: Colors.blue),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  book ?? '',
                                  style: GoogleFonts.poppins(color: kblue),
                                ),
                              ),
                      ),
                      kWidth10
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
