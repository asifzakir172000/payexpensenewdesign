import 'package:flutter/material.dart';

class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 2000),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
        curve: Curves.easeInOut,
        parent: animation,
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(
          sizeFactor: animation,
          axisAlignment: 0,
          child: page,
        ),
      );
    },
  );
}


class PageTransitionSlide extends PageRouteBuilder {
  final Widget page;

  PageTransitionSlide(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);
      return Align(
        alignment: Alignment.bottomCenter,
        child: SlideTransition(
          position: offsetAnimation,
          child: page,
        ),
      );
    },
  );
}

class PageTransitionFade extends PageRouteBuilder {
  final Widget page;

  PageTransitionFade(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: FadeTransition(
          opacity: animation,
          child: page,
        ),
      );
    },
  );
}