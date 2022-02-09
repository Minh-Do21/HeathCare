import 'package:flutter/material.dart';

// SizeConfig help us to make our UI responsive
/// Make sure you need to call [SizeConfig.init(context)]
/// on your starting screen
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Size appBarSize;
  static double paddingTop; // Height safe area top
  static double paddingBottom; // Height safe area top
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    paddingTop = _mediaQueryData.padding.top;
    paddingBottom = _mediaQueryData.padding.bottom;
    appBarSize = const Size.fromHeight(kToolbarHeight);
  }
}

const appDefaultPadding = 20.0;
const appDefaultRadius = BorderRadius.all(Radius.circular(10));

final appDefaultShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.3),
  spreadRadius: 5,
  blurRadius: 2,
  offset: const Offset(0, 3), // changes position of shadow
);

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  final screenHeight = SizeConfig.screenHeight;
  // Our designer use iPhone 11, that's why we use 896.0
  return (inputHeight / 896.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  final screenWidth = SizeConfig.screenWidth;
  // 414 is the layout width that designer use or you can say iPhone 11  width
  return (inputWidth / 414.0) * screenWidth;
}

// For add free space vertically
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key key,
    this.of = 20,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(of),
    );
  }
}

// For add free space horizontally
class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({
    Key key,
    this.of = 20,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(of),
    );
  }
}
