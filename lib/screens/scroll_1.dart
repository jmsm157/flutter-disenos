import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]));

  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: const [Page1(), Page2()]),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Background(), MainContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      height: double.infinity,
      child: const Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const TextScroll(text: '11º'),
          const TextScroll(text: 'Miércoles'),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class TextScroll extends StatelessWidget {
  final String text;
  const TextScroll({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return Text(
      text,
      style: textStyle,
    );
  }
}
