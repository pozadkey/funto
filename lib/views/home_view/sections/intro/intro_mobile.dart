// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/buttons/secondary_button.dart';
import '../../../widgets/input_fields/input_field.dart';
import '../../../widgets/links/links_icon.dart';

class IntroMobile extends StatefulWidget {
  const IntroMobile({Key? key}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 700 ? 30 : 20,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    final _headerNoteFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: Colors.grey[700],
        fontWeight: FontWeight.w400);

    void _launchTwitter() async {
      final url = Uri.parse('https://twitter.com/pozadkey');
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    void _launchGithub() async {
      final url = Uri.parse('https://github.com/pozadkey');
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    void _launchLinkedIn() async {
      final url = Uri.parse('https://linkedin.com/in/damilare-ajakaiye');
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      width: double.infinity,
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 60, 110, 60)
          : EdgeInsets.fromLTRB(20, 60, 20, 60),
      child: Column(
        children: [
          SizedBox(
            width: width >= 700 ? 500 : 300,
            child: FittedBox(
              child: Text(
                'The platform\nfor local-first\nsoftware.',
                style: _headerFont,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: width >= 700 ? 500 : 400,
            child: Text(
              'Don\'t write real-time APIs. Move your data base to the browser. Funto keeps local data in sync so you can build fast and collaborative apps.',
              style: _headerNoteFont,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/content.png',
            scale: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 500,
            child: InputField(),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 500,
            child: SecondaryButton(
              title: 'Get early access',
              bgColor: Colors.white,
              titleColor: Color.fromRGBO(79, 17, 94, 0.984),
              titleColorIn: Colors.white,
              titleColorOut: Color.fromARGB(251, 79, 17, 94),
              myColor: Color.fromARGB(251, 79, 17, 94),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Integrations',
                  style: _headerNoteFont,
                ),
                SizedBox(
                  width: 30,
                ),
                LinksIcon(
                    title: '',
                    footerIcon: FontAwesomeIcons.twitterSquare,
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                    onPressed: _launchTwitter),
                SizedBox(
                  width: 10,
                ),
                LinksIcon(
                    title: '',
                    footerIcon: FontAwesomeIcons.github,
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                    onPressed: _launchGithub),
                SizedBox(
                  width: 10,
                ),
                LinksIcon(
                    title: '',
                    footerIcon: FontAwesomeIcons.linkedin,
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                    onPressed: _launchLinkedIn),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
