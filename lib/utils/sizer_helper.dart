import 'package:flutter/cupertino.dart';

class SizeHelperUtil {
  SizeHelperUtil._();

  static SizeHelperUtil _instance = SizeHelperUtil._();

  double refWidth = 414;
  double refHeight = 844;
  double _width = 0.0;
  double _height = 0.0;

  static void setWidthHeight(BoxConstraints constraints) {
    _instance._width = constraints.maxWidth;
    _instance._height = constraints.maxHeight;
  }

  double get width => _width;

  double get height => _height;

  factory SizeHelperUtil() {
    return _instance;
  }
}

extension SizeExtension on num {
  double get h => (this*1.0) ;/*SizeHelperUtil().height * (this / SizeHelperUtil().refHeight)*/

  double get w =>(this*1.0); /*SizeHelperUtil().width * (this / SizeHelperUtil().refWidth);*/

  double get t =>(this*1.0); /*(SizeHelperUtil().height) * (this / (SizeHelperUtil().refHeight));*/
}
