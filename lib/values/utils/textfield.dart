import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? icon;
  final bool? issufixIcon;
  final double? topRight;
  final double? topLeft;
  final double? bottomLeft;
  final double? bottomRight;
  final double? size;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final Color? color;
  final Function()? onPressed;
  final Function(String)? onChanged;
  final Color? prefixColor;
  final Color? sufixColor;
  final Color? hintColor;
  final bool? isprefixIcon;
  final IconData? sufixIcon;
  final int? maxline;
  final int? minline;
  final bool? isBorderEnable;
  final TextAlign? alignText;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;

  CustomTextField(
      {required this.hint,
        this.hintColor,
        this.isprefixIcon,
        this.sufixIcon,
      this.textEditingController,
      this.keyboardType,
      this.icon,
      this.obscureText = false,
      this.topRight,
      this.topLeft,
      this.bottomLeft,
      this.bottomRight,
      this.issufixIcon,
      this.onPressed,
      this.size,
      this.color,
      this.onChanged,
      this.paddingRight,
      this.paddingLeft,
      this.paddingTop,
      this.paddingBottom,
      this.prefixColor,
      this.sufixColor,this.maxline,this.minline,this.isBorderEnable=true,
        this.alignText,
        this.hintFontSize,
        this.hintFontWeight
      });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(topRight ?? 0.0),
          topLeft: Radius.circular(topLeft ?? 0.0),
          bottomLeft: Radius.circular(bottomLeft ?? 0.0),
          bottomRight: Radius.circular(bottomRight ?? 0.0)),
      // elevation: large! ? 6 : (medium! ? 4 : 2),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText!,
        controller: textEditingController,
        keyboardType: keyboardType,
        cursorColor: Theme.of(context).iconTheme.color,
        textInputAction: TextInputAction.next,
        minLines: minline??1,
        maxLines: maxline??1,
        textAlign: alignText??TextAlign.start,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
              bottom: paddingBottom ?? 0,
              top: paddingTop ?? 0,
              right: paddingRight ?? 0,
              left: paddingLeft ?? 0),
                focusedBorder:  OutlineInputBorder(
                  borderRadius:BorderRadius.only(
                      topRight: Radius.circular(topRight ?? 0.0),
                      topLeft: Radius.circular(topLeft ?? 0.0),
                      bottomLeft: Radius.circular(bottomLeft ?? 0.0),
                      bottomRight: Radius.circular(bottomRight ?? 0.0)),
                  borderSide: BorderSide(color:isBorderEnable!? Colors.grey.shade400:Colors.transparent),
                ),
          enabledBorder: OutlineInputBorder(
            borderRadius:BorderRadius.only(
          topRight: Radius.circular(topRight ?? 0.0),
            topLeft: Radius.circular(topLeft ?? 0.0),
            bottomLeft: Radius.circular(bottomLeft ?? 0.0),
            bottomRight: Radius.circular(bottomRight ?? 0.0)),
            borderSide: BorderSide(color:isBorderEnable!? Colors.grey.shade400:Colors.transparent),
          ),
          prefixIcon: isprefixIcon!?Icon(icon,
              color: prefixColor ?? Theme.of(context).iconTheme.color,
              size: size ?? 21):null,
          suffixIcon: issufixIcon!
              ? IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    sufixIcon!,
                    color: sufixColor ?? Theme.of(context).iconTheme.color,
                  ))
              : null,
          hintText: hint,
          hintStyle: TextStyle(fontSize: hintFontSize??16,fontWeight:hintFontWeight??FontWeight.w100, color: hintColor??Colors.grey.shade400,fontFamily: 'montserrat_regular'),
        ),
      ),
    );
  }
}
