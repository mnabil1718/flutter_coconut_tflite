import 'package:cocoa/components/info_tile.dart';
import 'package:cocoa/helpers/constants.dart';
import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key, required this.prediction});

  final String prediction;

  @override
  Widget build(BuildContext context) {
    if (prediction == "Belum Matang") {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            const SizedBox(width: Constants.padding),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Kopyor",
                image:
                    Image.asset('assets/images/kopyor.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Sirup Es Campur",
                image: Image.asset('assets/images/es campur.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Manisan Kelapa",
                image: Image.asset('assets/images/manisan kelapa.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Serundeng",
                image: Image.asset('assets/images/serundeng.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Kue Bugis",
                image: Image.asset('assets/images/kue bugis.jpeg',
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: Constants.padding),
          ],
        ),
      );
    } else if (prediction == "Cukup Matang") {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            const SizedBox(width: Constants.padding),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Wajid",
                image:
                    Image.asset('assets/images/wajid.webp', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Santan",
                image:
                    Image.asset('assets/images/santan.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Kue Ulen",
                image: Image.asset('assets/images/kue ulen.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Wingko",
                image:
                    Image.asset('assets/images/wingko.webp', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: Constants.padding),
          ],
        ),
      );
    } else {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            const SizedBox(width: Constants.padding),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Minyak Kelapa",
                image:
                    Image.asset('assets/images/minyak.webp', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Bumbu Rendang",
                image: Image.asset('assets/images/bumbu rendang.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: InfoTile(
                title: "Dodol",
                image:
                    Image.asset('assets/images/dodol.jpg', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: Constants.padding),
          ],
        ),
      );
    }
  }
}
