import './../bootstrap/loader.dart';

BoxDecoration activeBoxDecoration = BoxDecoration(
  border: Border.all(color: lineColor, width: 1),
  color: lineColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(3),
    bottomLeft: Radius.circular(3),
    bottomRight: Radius.circular(8),
  ),
);

BoxDecoration usualBoxDecoration = BoxDecoration(
  border: Border.all(color: backgroundColor, width: 1),
  color: whiteColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(3),
    bottomLeft: Radius.circular(3),
    bottomRight: Radius.circular(8),
  ),
);
