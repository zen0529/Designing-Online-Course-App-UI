import 'package:course_ui/pages/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:course_ui/widgets/widgets.dart';

//vertical
const List<String> imagePaths = [
  'assets/img_saly24.png',
  'assets/Saly-13.png',
];

const List<String> title = [
  'Flutter Developer',
  'Full Stack Javascript',
];

const List<String> duration = [
  '8 Hours',
  '6 Hours',
];

//horizontal
const List<String> startcolor = [
  '0xFF9288E4',
  '0xFFF4C465',
];

const List<String> endcolor = [
  '0xFF534EA7',
  '0xFFC63956',
];

const List<String> headline = [
  'Recommended',
  'NEW CLASS',
];

const List<String> htitle = [
  'UI/UX DESIGNER\nBEGINNER',
  'GRAPHIC DESIGN\nMASTER',
];

const List<String> himage = [
  'assets/img_saly10.png',
  'assets/img_saly36.png',
];

const List<String> colors = ['0xFFAFA8EE', '0xFFF4C67A'];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'Master Class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseDetailScreen()));
              },
              child: SizedBox(
                height: 349,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MyHorizontalList(
                      startColor: int.parse(startcolor[index]),
                      endColor: int.parse(endcolor[index]),
                      courseHeadline: headline[index],
                      courseTitle: htitle[index],
                      courseImage: himage[index],
                      borderColor: int.parse(colors[index]),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free online class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'From over 80 lectures',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseDetailScreen()));
              },
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyVerticalList(
                      courseImage: imagePaths[index],
                      courseTitle: title[index],
                      courseDuration: duration[index],
                      courseRating: 5.0);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
