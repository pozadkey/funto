// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/buttons/secondary_button.dart';
import '../../../widgets/input_fields/input_field.dart';
import '../../../widgets/links/links_icon.dart';

class IntroDesktop extends StatefulWidget {
  const IntroDesktop({Key? key}) : super(key: key);

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  final _headerFont = TextStyle(
      fontSize: 40,
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: width <= 1550
                  ? EdgeInsets.fromLTRB(150, 50, 150, 50)
                  : EdgeInsets.fromLTRB(200, 50, 200, 50),
              width: 2000,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 500,
                        child: FittedBox(
                          child: Text(
                            'The platform\nfor local-first\nsoftware.',
                            style: _headerFont,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          'Don\'t write real-time APIs. Move your data base to the browser. Funto keeps local data in sync so you can build fast and collaborative apps.',
                          style: _headerNoteFont,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 500,
                        child: Row(
                          children: [
                            Expanded(child: InputField()),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SecondaryButton(
                                title: 'Get early access',
                                bgColor: Colors.white,
                                titleColor: Color.fromARGB(251, 79, 17, 94),
                                titleColorIn: Colors.white,
                                titleColorOut: Color.fromARGB(251, 79, 17, 94),
                                myColor: Color.fromARGB(251, 79, 17, 94),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        width: 500,
                        child: Row(
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
                  )),
                  Expanded(
                      child: Image.asset(
                    'assets/images/content.png',
                    scale: 0.2,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
