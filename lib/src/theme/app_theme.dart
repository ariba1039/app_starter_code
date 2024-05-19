import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension WidgetExtensions on Widget {
  // Center
  Widget center() {
    return Center(child: this);
  }

  // visbile
  Widget visible(bool visible) {
    return Visibility(
      visible: visible,
      child: this,
    );
  }

  Widget padding(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }

  Widget paddingSymmetric({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget paddingOnly(
      {double left = 0, double right = 0, double top = 0, double bottom = 0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: this,
    );
  }

  Widget textStyle(TextStyle? style, {TextAlign? textAlign}) {
    return Builder(builder: (context) {
      final t = DefaultTextStyle.of(context);

      return DefaultTextStyle(
        textAlign: textAlign ?? t.textAlign,
        style: t.style.merge(style),
        child: this,
      );
    });
  }

  Widget foregroundColor(Color? color) {
    return Builder(builder: (context) {
      return DefaultTextStyle(
        style: DefaultTextStyle.of(context).style.copyWith(color: color),
        child: IconTheme(
          data: IconTheme.of(context).copyWith(color: color),
          child: this,
        ),
      );
    });
  }

  Widget alignText(TextAlign textAlign) {
    return textStyle(null, textAlign: textAlign);
  }

  Widget font({FontWeight? weight, double? size}) {
    return textStyle(
      TextStyle(
        fontWeight: weight,
        fontSize: size,
        fontFamily: GoogleFonts.publicSans().fontFamily,
      ),
    );
  }

  Widget get displaylgRegular => font(size: 48, weight: FontWeight.w400);
  Widget get displaylgMedium => font(size: 48, weight: FontWeight.w500);
  Widget get displaylgSemibold => font(size: 48, weight: FontWeight.w600);
  Widget get displaylgBold => font(size: 48, weight: FontWeight.w700);

  Widget get displaymdRegular => font(size: 36, weight: FontWeight.w400);
  Widget get displaymdMedium => font(size: 36, weight: FontWeight.w500);
  Widget get displaymdSemibold => font(size: 36, weight: FontWeight.w600);
  Widget get displaymdBold => font(size: 36, weight: FontWeight.w700);

  Widget get displaysmRegular => font(size: 30, weight: FontWeight.w400);
  Widget get displaysmMedium => font(size: 30, weight: FontWeight.w500);
  Widget get displaysmSemibold => font(size: 30, weight: FontWeight.w600);
  Widget get displaysmBold => font(size: 30, weight: FontWeight.w700);

  Widget get displayxsRegular => font(size: 24, weight: FontWeight.w400);
  Widget get displayxsMedium => font(size: 24, weight: FontWeight.w500);
  Widget get displayxsSemibold => font(size: 24, weight: FontWeight.w600);
  Widget get displayxsBold => font(size: 24, weight: FontWeight.w700);
 
   Widget get displayxxsRegular => font(size: 22, weight: FontWeight.w400);
  Widget get displayxxsMedium => font(size: 22, weight: FontWeight.w500);
  Widget get displayxxsSemibold => font(size: 22, weight: FontWeight.w600);
  Widget get displayxxsBold => font(size: 22, weight: FontWeight.w700);

  Widget get textxlRegular => font(size: 20, weight: FontWeight.w400);
  Widget get textxlMedium => font(size: 20, weight: FontWeight.w500);
  Widget get textxlSemibold => font(size: 20, weight: FontWeight.w600);
  Widget get textxlBold => font(size: 20, weight: FontWeight.w700);

  Widget get textlgRegular => font(size: 18, weight: FontWeight.w400);
  Widget get textlgMedium => font(size: 18, weight: FontWeight.w500);
  Widget get textlgSemibold => font(size: 18, weight: FontWeight.w600);
  Widget get textlgBold => font(size: 18, weight: FontWeight.w700);

  Widget get textmdRegular => font(size: 16, weight: FontWeight.w400);
  Widget get textmdMedium => font(size: 16, weight: FontWeight.w500);
  Widget get textmdSemibold => font(size: 16, weight: FontWeight.w600);
  Widget get textmdBold => font(size: 16, weight: FontWeight.w700);

  Widget get textsmRegular => font(size: 14, weight: FontWeight.w400);
  Widget get textsmMedium => font(size: 14, weight: FontWeight.w500);
  Widget get textsmSemibold => font(size: 14, weight: FontWeight.w600);
  Widget get textsmBold => font(size: 14, weight: FontWeight.w700);

 
  Widget get textxsRegular => font(size: 12, weight: FontWeight.w400);
  Widget get textxsMedium => font(size: 12, weight: FontWeight.w500);
  Widget get textxsSemibold => font(size: 12, weight: FontWeight.w600);
  Widget get textxsBold => font(size: 12, weight: FontWeight.w700);



}
