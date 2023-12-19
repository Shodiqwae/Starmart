
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Signin.dart';

class OnAppbar extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  OnAppbar({
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
  color: Colors.white,
  padding: EdgeInsets.only(top: 50),
  child: Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montsserat-Bold',
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "$currentPage/",
              ),
              TextSpan(
                text: "$totalPages",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3), // Nih Atur Kepudaran Nya
                ),
              ),
            ],
          ),
        ),
      ),
      Spacer(),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Input())));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montsserat-Bold',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class IntroSlider extends StatefulWidget {
  const IntroSlider({Key? key}) : super(key: key);

  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  PageController _controller = PageController();

  int currentPageIndex = 0;
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OnAppbar(currentPage: currentPageIndex + 1, totalPages: 3),
          Expanded(
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                  isLastPage = index == 2;
                });
              },
              children: [
                BuildIntroPage(
                  img: 'images/2.png',
                  title: 'Choose Products',
                  description: 'After peeling the strawberries, '
                      'soak lettuce, pumpkin seeds and '
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..'
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..',
                ),
                BuildIntroPage(
                  img: 'images/keranjang.png',
                  title: 'Make Payment',
                  description: 'After peeling the strawberries, '
                      'soak lettuce, pumpkin seeds and '
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..'
                       'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..',
                ),
                BuildIntroPage(
                  img: 'images/1.png',
                  title: 'Page Three',
                  description: 'After peeling the strawberries, '
                      'soak lettuce, pumpkin seeds and '
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    TextButton(
      onPressed: () {
        if (currentPageIndex > 0) {
          _controller.previousPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        }
      },
      child: Text('Prev', style: TextStyle(fontSize: 21,  color: Colors.black.withOpacity(0.3),)),
    ),
    Spacer(),
    SmoothPageIndicator(
  controller: _controller,
  count: 3,
  onDotClicked: (index) {
    _controller.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  },
  effect: ExpandingDotsEffect(
    activeDotColor: Colors.black,
    dotHeight: 10.0,
    dotWidth: 10.0,
    dotColor: Colors.black12,
    expansionFactor: 5, // Nih Buat Atur Si DOT saat Active mo sepanjang apa
  ),
),
    Spacer(),
    TextButton( 
      onPressed: isLastPage
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Input();
                }),
              );
                  }: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text( // Nih Klo mau atur Si Done atau Get Started duhay bingung
                    isLastPage ? 'Done' : 'Next',
                    style: TextStyle(fontSize: 21, color: const Color.fromARGB(255, 52, 114, 223)),
                  ),
                ),
              ],
            ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
class BuildIntroPage extends StatelessWidget {
  final String title;
  final String img;
  final String description;

  const BuildIntroPage({
    Key? key,
    required this.title,
    required this.description,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20, // Sesuaikan dengan kebutuhan Anda
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Montsserat-Bold', fontSize: 30),
        ),
        SizedBox(
          height: 10, // Sesuaikan dengan kebutuhan Anda
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.3)),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
